/*
Copyright 2015, 2016 OpenMarket Ltd
Copyright 2019 New Vector Ltd

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import React from 'react';
import SdkConfig from 'matrix-react-sdk/src/SdkConfig';

const VectorAuthFooter = async () => {
    const quoteJsonStr = await fetch("https://zitate.prapsschnalinen.de/api/wrongquotes/random?min_rating=2")
        .then((result) => result.text())
        .catch((error) => error.toString());
    try {
        const quoteObj = JSON.parse(quoteJsonStr);
        const quoteUrl = `https://asozialesnetzwerk.github.io/zitate/#/${quoteObj.quote.id}-${quoteObj.author.id}`;
        const quote = `»${quoteObj.quote.quote}«" -${quoteObj.author.author}`;
        return (
            <div className="mx_AuthFooter">
                <a href={quoteUrl} key={quote} target="_blank" rel="noreferrer noopener">
                    {quote}
                </a>
            </div>
        );
    } catch (e) {
        const brandingConfig = SdkConfig.get().branding;
        let links = [
            {"text": "Für die Asozialen dieser Welt.", "url": "https://github.com/asozialesnetzwerk"}
        ];

        if (brandingConfig && brandingConfig.authFooterLinks) {
            links = brandingConfig.authFooterLinks;
        }

        const authFooterLinks = [];
        for (const linkEntry of links) {
            authFooterLinks.push(
                <a href={linkEntry.url} key={linkEntry.text} target="_blank" rel="noreferrer noopener">
                    {linkEntry.text}
                </a>,
            );
        }

        return (
            <div className="mx_AuthFooter">
                {authFooterLinks}
            </div>
        );
    }
};

VectorAuthFooter.replaces = 'AuthFooter';

export default VectorAuthFooter;
