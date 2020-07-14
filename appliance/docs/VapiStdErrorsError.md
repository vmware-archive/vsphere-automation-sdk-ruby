# VSphereAutomation::Appliance::VapiStdErrorsError

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messages** | [**Array&lt;VapiStdLocalizableMessage&gt;**](VapiStdLocalizableMessage.md) | Stack of one or more localizable messages for human {@term error} consumers. &lt;p&gt; The message at the top of the stack (first in the list) describes the {@term error} from the perspective of the {@term operation} the client invoked. Each subsequent message in the stack describes the \&quot;cause\&quot; of the prior message. | 
**data** | [**Object**](.md) | Data to facilitate clients responding to the {@term operation} reporting a standard {@term error} to indicating that it was unable to complete successfully. &lt;p&gt; {@term Operations} may provide data that clients can use when responding to {@term errors}.  Since the data that clients need may be specific to the context of the {@term operation} reporting the {@term error}, different {@term operations} that report the same {@term error} may provide different data in the {@term error}.  The documentation for each each {@term operation} will describe what, if any, data it provides for each {@term error} it reports. The {@link ArgumentLocations}, {@link FileLocations}, and {@link TransientIndication} {@term structures} are intended as possible values for this {@term field}.  {@link vapi.std.DynamicID} may also be useful as a value for this {@term field} (although that is not its primary purpose).  Some {@term services} may provide their own specific {@term structures} for use as the value of this {@term field} when reporting {@term errors} from their {@term operations}. | [optional] 


