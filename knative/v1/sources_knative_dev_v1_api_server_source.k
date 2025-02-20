"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema ApiServerSource:
    r"""
    ApiServerSource is an event source that brings Kubernetes API server events into Knative.

    Attributes
    ----------
    apiVersion : str, default is "sources.knative.dev/v1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "ApiServerSource", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : SourcesKnativeDevV1APIServerSourceSpec, default is Undefined, optional
        spec
    status : SourcesKnativeDevV1APIServerSourceStatus, default is Undefined, optional
        status
    """


    apiVersion: "sources.knative.dev/v1" = "sources.knative.dev/v1"

    kind: "ApiServerSource" = "ApiServerSource"

    metadata?: v1.ObjectMeta

    spec?: SourcesKnativeDevV1APIServerSourceSpec

    status?: SourcesKnativeDevV1APIServerSourceStatus


schema SourcesKnativeDevV1APIServerSourceSpec:
    r"""
    sources knative dev v1 API server source spec

    Attributes
    ----------
    ceOverrides : SourcesKnativeDevV1APIServerSourceSpecCeOverrides, default is Undefined, optional
        ce overrides
    mode : str, default is Undefined, optional
        EventMode controls the format of the event. `Reference` sends a dataref event type for the resource under watch. `Resource` send the full resource lifecycle event. Defaults to `Reference`
    namespaceSelector : SourcesKnativeDevV1APIServerSourceSpecNamespaceSelector, default is Undefined, optional
        namespace selector
    owner : SourcesKnativeDevV1APIServerSourceSpecOwner, default is Undefined, optional
        owner
    resources : [SourcesKnativeDevV1APIServerSourceSpecResourcesItems0], default is Undefined, required
        Resource are the resources this source will track and send related lifecycle events from the Kubernetes ApiServer, with an optional label selector to help filter.
    serviceAccountName : str, default is Undefined, optional
        ServiceAccountName is the name of the ServiceAccount to use to run this source. Defaults to default if not set.
    sink : SourcesKnativeDevV1APIServerSourceSpecSink, default is Undefined, optional
        sink
    """


    ceOverrides?: SourcesKnativeDevV1APIServerSourceSpecCeOverrides

    mode?: str

    namespaceSelector?: SourcesKnativeDevV1APIServerSourceSpecNamespaceSelector

    owner?: SourcesKnativeDevV1APIServerSourceSpecOwner

    resources: [SourcesKnativeDevV1APIServerSourceSpecResourcesItems0]

    serviceAccountName?: str

    sink?: SourcesKnativeDevV1APIServerSourceSpecSink


schema SourcesKnativeDevV1APIServerSourceSpecCeOverrides:
    r"""
    CloudEventOverrides defines overrides to control the output format and modifications of the event sent to the sink.

    Attributes
    ----------
    extensions : any, default is Undefined, optional
        Extensions specify what attribute are added or overridden on the outbound event. Each `Extensions` key-value pair are set on the event as an attribute extension independently.
    """


    extensions?: any


schema SourcesKnativeDevV1APIServerSourceSpecNamespaceSelector:
    r"""
    NamespaceSelector is a label selector to capture the namespaces that should be watched by the source.

    Attributes
    ----------
    matchExpressions : [SourcesKnativeDevV1APIServerSourceSpecNamespaceSelectorMatchExpressionsItems0], default is Undefined, optional
        matchExpressions is a list of label selector requirements. The requirements are ANDed.
    matchLabels : any, default is Undefined, optional
        matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
    """


    matchExpressions?: [SourcesKnativeDevV1APIServerSourceSpecNamespaceSelectorMatchExpressionsItems0]

    matchLabels?: any


schema SourcesKnativeDevV1APIServerSourceSpecNamespaceSelectorMatchExpressionsItems0:
    r"""
    sources knative dev v1 API server source spec namespace selector match expressions items0

    Attributes
    ----------
    key : str, default is Undefined, optional
        key is the label key that the selector applies to.
    operator : str, default is Undefined, optional
        operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
    values : [str], default is Undefined, optional
        values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    """


    key?: str

    operator?: str

    values?: [str]


schema SourcesKnativeDevV1APIServerSourceSpecOwner:
    r"""
    ResourceOwner is an additional filter to only track resources that are owned by a specific resource type. If ResourceOwner matches Resources[n] then Resources[n] is allowed to pass the ResourceOwner filter.

    Attributes
    ----------
    apiVersion : str, default is Undefined, optional
        APIVersion - the API version of the resource to watch.
    kind : str, default is Undefined, optional
        Kind of the resource to watch. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    """


    apiVersion?: str

    kind?: str


schema SourcesKnativeDevV1APIServerSourceSpecResourcesItems0:
    r"""
    sources knative dev v1 API server source spec resources items0

    Attributes
    ----------
    apiVersion : str, default is Undefined, optional
        APIVersion - the API version of the resource to watch.
    kind : str, default is Undefined, optional
        Kind of the resource to watch. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    selector : SourcesKnativeDevV1APIServerSourceSpecResourcesItems0Selector, default is Undefined, optional
        selector
    """


    apiVersion?: str

    kind?: str

    selector?: SourcesKnativeDevV1APIServerSourceSpecResourcesItems0Selector


schema SourcesKnativeDevV1APIServerSourceSpecResourcesItems0Selector:
    r"""
    LabelSelector filters this source to objects to those resources pass the label selector. More info: http://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors

    Attributes
    ----------
    matchExpressions : [SourcesKnativeDevV1APIServerSourceSpecResourcesItems0SelectorMatchExpressionsItems0], default is Undefined, optional
        matchExpressions is a list of label selector requirements. The requirements are ANDed.
    matchLabels : any, default is Undefined, optional
        matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
    """


    matchExpressions?: [SourcesKnativeDevV1APIServerSourceSpecResourcesItems0SelectorMatchExpressionsItems0]

    matchLabels?: any


schema SourcesKnativeDevV1APIServerSourceSpecResourcesItems0SelectorMatchExpressionsItems0:
    r"""
    sources knative dev v1 API server source spec resources items0 selector match expressions items0

    Attributes
    ----------
    key : str, default is Undefined, optional
        key is the label key that the selector applies to.
    operator : str, default is Undefined, optional
        operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
    values : [str], default is Undefined, optional
        values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    """


    key?: str

    operator?: str

    values?: [str]


schema SourcesKnativeDevV1APIServerSourceSpecSink:
    r"""
    Sink is a reference to an object that will resolve to a uri to use as the sink.

    Attributes
    ----------
    CACerts : str, default is Undefined, optional
        CACerts is the Certification Authority (CA) certificates in PEM format that the source trusts when sending events to the sink.
    audience : str, default is Undefined, optional
        Audience is the OIDC audience. This only needs to be set if the target is not an Addressable and thus the Audience can't be received from the target itself. If specified, it takes precedence over the target's Audience.
    ref : SourcesKnativeDevV1APIServerSourceSpecSinkRef, default is Undefined, optional
        ref
    uri : str, default is Undefined, optional
        URI can be an absolute URL(non-empty scheme and non-empty host) pointing to the target or a relative URI. Relative URIs will be resolved using the base URI retrieved from Ref.
    """


    CACerts?: str

    audience?: str

    ref?: SourcesKnativeDevV1APIServerSourceSpecSinkRef

    uri?: str


schema SourcesKnativeDevV1APIServerSourceSpecSinkRef:
    r"""
    Ref points to an Addressable.

    Attributes
    ----------
    apiVersion : str, default is Undefined, optional
        API version of the referent.
    kind : str, default is Undefined, optional
        Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    name : str, default is Undefined, optional
        Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    namespace : str, default is Undefined, optional
        Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/ This is optional field, it gets defaulted to the object holding it if left out.
    """


    apiVersion?: str

    kind?: str

    name?: str

    namespace?: str


schema SourcesKnativeDevV1APIServerSourceStatus:
    r"""
    sources knative dev v1 API server source status

    Attributes
    ----------
    annotations : any, default is Undefined, optional
        Annotations is additional Status fields for the Resource to save some additional State as well as convey more information to the user. This is roughly akin to Annotations on any k8s resource, just the reconciler conveying richer information outwards.
    auth : SourcesKnativeDevV1APIServerSourceStatusAuth, default is Undefined, optional
        auth
    ceAttributes : [SourcesKnativeDevV1APIServerSourceStatusCeAttributesItems0], default is Undefined, optional
        CloudEventAttributes are the specific attributes that the Source uses as part of its CloudEvents.
    conditions : [SourcesKnativeDevV1APIServerSourceStatusConditionsItems0], default is Undefined, optional
        Conditions the latest available observations of a resource's current state.
    namespaces : [str], default is Undefined, optional
        Namespaces show the namespaces currently watched by the ApiServerSource
    observedGeneration : int, default is Undefined, optional
        ObservedGeneration is the 'Generation' of the Service that was last processed by the controller.
    sinkAudience : str, default is Undefined, optional
        Audience is the OIDC audience of the sink. This only needs to be set if the target is not an Addressable and thus the Audience can't be received from the Addressable itself. If the target is an Addressable and specifies an Audience, the target's Audience takes precedence.
    sinkCACerts : str, default is Undefined, optional
        CACerts is the Certification Authority (CA) certificates in PEM format that the source trusts when sending events to the sink.
    sinkUri : str, default is Undefined, optional
        SinkURI is the current active sink URI that has been configured for the Source.
    """


    annotations?: any

    auth?: SourcesKnativeDevV1APIServerSourceStatusAuth

    ceAttributes?: [SourcesKnativeDevV1APIServerSourceStatusCeAttributesItems0]

    conditions?: [SourcesKnativeDevV1APIServerSourceStatusConditionsItems0]

    namespaces?: [str]

    observedGeneration?: int

    sinkAudience?: str

    sinkCACerts?: str

    sinkUri?: str


schema SourcesKnativeDevV1APIServerSourceStatusAuth:
    r"""
    Auth provides the relevant information for OIDC authentication.

    Attributes
    ----------
    serviceAccountName : str, default is Undefined, optional
        ServiceAccountName is the name of the generated service account used for this components OIDC authentication.
    serviceAccountNames : [str], default is Undefined, optional
        ServiceAccountNames is the list of names of the generated service accounts used for this components OIDC authentication.
    """


    serviceAccountName?: str

    serviceAccountNames?: [str]


schema SourcesKnativeDevV1APIServerSourceStatusCeAttributesItems0:
    r"""
    sources knative dev v1 API server source status ce attributes items0

    Attributes
    ----------
    source : str, default is Undefined, optional
        Source is the CloudEvents source attribute.
    $type : str, default is Undefined, optional
        Type refers to the CloudEvent type attribute.
    """


    source?: str

    $type?: str


schema SourcesKnativeDevV1APIServerSourceStatusConditionsItems0:
    r"""
    sources knative dev v1 API server source status conditions items0

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, optional
        LastTransitionTime is the last time the condition transitioned from one status to another. We use VolatileTime in place of metav1.Time to exclude this from creating equality.Semantic differences (all other things held constant).
    message : str, default is Undefined, optional
        A human readable message indicating details about the transition.
    reason : str, default is Undefined, optional
        The reason for the condition's last transition.
    severity : str, default is Undefined, optional
        Severity with which to treat failures of this type of condition. When this is not specified, it defaults to Error.
    status : str, default is Undefined, required
        Status of the condition, one of True, False, Unknown.
    $type : str, default is Undefined, required
        Type of condition.
    """


    lastTransitionTime?: str

    message?: str

    reason?: str

    severity?: str

    status: str

    $type: str


