
import Foundation

class NPUtils: NSObject {
    func classOfPropertyNamed(propertyName: String, theClass: AnyClass!) -> Any.Type? {
        var propertyClass: Any.Type?
        let property: objc_property_t = class_getProperty(theClass, propertyName)
        let attributes = String(UTF8String: property_getAttributes(property))!.componentsSeparatedByString(",") as [String]

        var splitPropertyAttributes = String(attributes).componentsSeparatedByString(" ")
        if (splitPropertyAttributes.count > 0) {
            let splitEncodeType: Array = splitPropertyAttributes[0].componentsSeparatedByString("\"")

            let error = "Error trying to map property \(propertyName) for class \(class_getName(theClass)), the property \(propertyName) does not appear to be of type NSObject, please consider using a transformer if it is a supported PGTransformResultType, otherwise your type is not currently supported."

            self.assert(splitEncodeType.count > 1, message:error)
            propertyClass = NSClassFromString(splitEncodeType[1])!
        } else {
            propertyClass = nil
        }

        return propertyClass
    }

    func assert (assertion: Bool, message: String) {
        assert(assertion, message: message)
    }
}