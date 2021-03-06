/*****************************************************************************************************
 * Copyright 2016 SPECURE GmbH
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************************************/

import Foundation
import ObjectMapper

///
open class SpeedMeasurementDetailResultResponse: BasicResponse {

    ///
    open var speedMeasurementResultDetailList: [SpeedMeasurementDetailItem]?

    ///
    override open func mapping(map: Map) {
        super.mapping(map: map)

        speedMeasurementResultDetailList <- map["testresultdetail"]
    }

    ///
    open class SpeedMeasurementDetailItem: Mappable {

        ///
        open var key: String?

        ///
        open var value: Any?

        ///
        open var title: String?

        ///
        public init() {

        }

        ///
        required public init?(map: Map) {

        }

        ///
        open func mapping(map: Map) {
            key <- map["key"]
            value <- map["value"]
            title <- map["title"]
        }
    }
}
