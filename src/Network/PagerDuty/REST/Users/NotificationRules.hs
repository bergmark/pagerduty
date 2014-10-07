{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}

-- Module      : Network.PagerDuty.REST.Users.NotificationRules
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | When a user is assigned an incident, the user's notification rules are
-- used to determine which contact method will be used to alert the user and how
-- long after the incident to do so.
--
-- Access and manipulate the notification rules for a user.
module Network.PagerDuty.REST.Users.NotificationRules
    (
    ) where

import Control.Lens
import Data.Monoid
import Data.Text                    (Text)
import Data.Time
import Network.HTTP.Types
import Network.PagerDuty.TH
import Network.PagerDuty.Types

users :: Path
users = "users"
