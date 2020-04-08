# VSphereAutomation::VCenter::VcenterVchaOperationsInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Array&lt;String&gt;** | Identifiers of the operations that are currently running. These operation strings are one of \&quot;vcenter.vcha.cluster.deploy\&quot;, \&quot;vcenter.vcha.cluster.failover\&quot;, \&quot;vcenter.vcha.cluster.passive.redeploy\&quot;, \&quot;vcenter.vcha.cluster.witness.redeploy\&quot;, \&quot;vcenter.vcha.cluster.mode.set\&quot;, and \&quot;vcenter.vcha.cluster.undeploy\&quot;. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vapi.operation. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vapi.operation. | 
**disabled** | **Array&lt;String&gt;** | Identifiers of the operations that are current disabled. These operation strings are one of \&quot;vcenter.vcha.cluster.deploy\&quot;, \&quot;vcenter.vcha.cluster.failover\&quot;, \&quot;vcenter.vcha.cluster.passive.redeploy\&quot;, \&quot;vcenter.vcha.cluster.witness.redeploy\&quot;, \&quot;vcenter.vcha.cluster.mode.set\&quot;, \&quot;vcenter.vcha.cluster.undeploy\&quot; and \&quot;vcenter.vcha.cluster.get\&quot;. When clients pass a value of this structure as a parameter, the field must contain identifiers for the resource type: vapi.operation. When operations return a value of this structure as a result, the field will contain identifiers for the resource type: vapi.operation. | 


