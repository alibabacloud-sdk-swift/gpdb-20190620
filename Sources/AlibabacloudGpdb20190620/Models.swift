import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DescribeDBInstanceForDmsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var host: String?

    public var ownerId: Int64?

    public var port: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Host") && dict["Host"] != nil {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Port") && dict["Port"] != nil {
            self.port = dict["Port"] as! Int64
        }
    }
}

public class DescribeDBInstanceForDmsResponseBody : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public var aliUid: String?

        public var bid: String?

        public var connectionString: String?

        public var dbInstanceName: String?

        public var dbType: String?

        public var description_: String?

        public var instanceNetworkType: String?

        public var port: String?

        public var region: String?

        public var vSwitchId: String?

        public var version: String?

        public var vpcCloudInstanceId: String?

        public var vpcId: String?

        public var vpcIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.dbInstanceName != nil {
                map["DbInstanceName"] = self.dbInstanceName!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceNetworkType != nil {
                map["InstanceNetworkType"] = self.instanceNetworkType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.vpcCloudInstanceId != nil {
                map["VpcCloudInstanceId"] = self.vpcCloudInstanceId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcIp != nil {
                map["VpcIp"] = self.vpcIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("Bid") && dict["Bid"] != nil {
                self.bid = dict["Bid"] as! String
            }
            if dict.keys.contains("ConnectionString") && dict["ConnectionString"] != nil {
                self.connectionString = dict["ConnectionString"] as! String
            }
            if dict.keys.contains("DbInstanceName") && dict["DbInstanceName"] != nil {
                self.dbInstanceName = dict["DbInstanceName"] as! String
            }
            if dict.keys.contains("DbType") && dict["DbType"] != nil {
                self.dbType = dict["DbType"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceNetworkType") && dict["InstanceNetworkType"] != nil {
                self.instanceNetworkType = dict["InstanceNetworkType"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VpcCloudInstanceId") && dict["VpcCloudInstanceId"] != nil {
                self.vpcCloudInstanceId = dict["VpcCloudInstanceId"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcIp") && dict["VpcIp"] != nil {
                self.vpcIp = dict["VpcIp"] as! String
            }
        }
    }
    public var code: String?

    public var count: Int64?

    public var httpStatusCode: Int32?

    public var instance: DescribeDBInstanceForDmsResponseBody.Instance?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Instance") && dict["Instance"] != nil {
            var model = DescribeDBInstanceForDmsResponseBody.Instance()
            model.fromMap(dict["Instance"] as! [String: Any])
            self.instance = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeDBInstanceForDmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceForDmsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDBInstanceForDmsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceSecurityIpsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeDBInstanceSecurityIpsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var groupName: String?

        public var whiteList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.whiteList != nil {
                map["WhiteList"] = self.whiteList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("WhiteList") && dict["WhiteList"] != nil {
                self.whiteList = dict["WhiteList"] as! [String]
            }
        }
    }
    public var code: String?

    public var count: Int64?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var result: [DescribeDBInstanceSecurityIpsResponseBody.Result]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var tmp : [DescribeDBInstanceSecurityIpsResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = DescribeDBInstanceSecurityIpsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeDBInstanceSecurityIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceSecurityIpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDBInstanceSecurityIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstancesForDmsRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class DescribeDBInstancesForDmsResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var aliUid: String?

        public var bid: String?

        public var connectionString: String?

        public var dbInstanceName: String?

        public var dbType: String?

        public var description_: String?

        public var instanceNetworkType: String?

        public var port: String?

        public var region: String?

        public var vSwitchId: String?

        public var version: String?

        public var vpcCloudInstanceId: String?

        public var vpcId: String?

        public var vpcIp: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.dbInstanceName != nil {
                map["DbInstanceName"] = self.dbInstanceName!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.instanceNetworkType != nil {
                map["InstanceNetworkType"] = self.instanceNetworkType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.vpcCloudInstanceId != nil {
                map["VpcCloudInstanceId"] = self.vpcCloudInstanceId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcIp != nil {
                map["VpcIp"] = self.vpcIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("Bid") && dict["Bid"] != nil {
                self.bid = dict["Bid"] as! String
            }
            if dict.keys.contains("ConnectionString") && dict["ConnectionString"] != nil {
                self.connectionString = dict["ConnectionString"] as! String
            }
            if dict.keys.contains("DbInstanceName") && dict["DbInstanceName"] != nil {
                self.dbInstanceName = dict["DbInstanceName"] as! String
            }
            if dict.keys.contains("DbType") && dict["DbType"] != nil {
                self.dbType = dict["DbType"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceNetworkType") && dict["InstanceNetworkType"] != nil {
                self.instanceNetworkType = dict["InstanceNetworkType"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VpcCloudInstanceId") && dict["VpcCloudInstanceId"] != nil {
                self.vpcCloudInstanceId = dict["VpcCloudInstanceId"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcIp") && dict["VpcIp"] != nil {
                self.vpcIp = dict["VpcIp"] as! String
            }
        }
    }
    public var code: String?

    public var count: Int64?

    public var httpStatusCode: Int32?

    public var instances: [DescribeDBInstancesForDmsResponseBody.Instances]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! Int64
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            var tmp : [DescribeDBInstancesForDmsResponseBody.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = DescribeDBInstancesForDmsResponseBody.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeDBInstancesForDmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstancesForDmsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDBInstancesForDmsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceSecurityIpsRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var groupName: String?

    public var instanceId: String?

    public var ownerId: Int64?

    public var whileList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.whileList != nil {
            map["WhileList"] = self.whileList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("WhileList") && dict["WhileList"] != nil {
            self.whileList = dict["WhileList"] as! String
        }
    }
}

public class ModifyDBInstanceSecurityIpsResponseBody : Tea.TeaModel {
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyDBInstanceSecurityIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceSecurityIpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyDBInstanceSecurityIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
