"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import regex
import k8s.apimachinery.pkg.apis.meta.v1
_regex_match = regex.match


schema CiliumBGPClusterConfig:
    """
    CiliumBGPClusterConfig is the Schema for the CiliumBGPClusterConfig API

    Attributes
    ----------
    apiVersion : str, default is "cilium.io/v2alpha1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "CiliumBGPClusterConfig", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, required
        metadata
    spec : CiliumIoV2alpha1CiliumBGPClusterConfigSpec, default is Undefined, required
        spec
    """


    apiVersion: "cilium.io/v2alpha1" = "cilium.io/v2alpha1"

    kind: "CiliumBGPClusterConfig" = "CiliumBGPClusterConfig"

    metadata: v1.ObjectMeta

    spec: CiliumIoV2alpha1CiliumBGPClusterConfigSpec


schema CiliumIoV2alpha1CiliumBGPClusterConfigSpec:
    """
    Spec defines the desired cluster configuration of the BGP control plane.

    Attributes
    ----------
    bgpInstances : [CiliumIoV2alpha1CiliumBGPClusterConfigSpecBgpInstancesItems0], default is Undefined, required
        A list of CiliumBGPInstance(s) which instructs the BGP control plane how to instantiate virtual BGP routers.
    nodeSelector : CiliumIoV2alpha1CiliumBGPClusterConfigSpecNodeSelector, default is Undefined, optional
        node selector
    """


    bgpInstances: [CiliumIoV2alpha1CiliumBGPClusterConfigSpecBgpInstancesItems0]

    nodeSelector?: CiliumIoV2alpha1CiliumBGPClusterConfigSpecNodeSelector


    check:
        len(bgpInstances) >= 1
        len(bgpInstances) <= 16


schema CiliumIoV2alpha1CiliumBGPClusterConfigSpecBgpInstancesItems0:
    """
    cilium io v2alpha1 cilium b g p cluster config spec bgp instances items0

    Attributes
    ----------
    localASN : int, default is Undefined, optional
        LocalASN is the ASN of this BGP instance. Supports extended 32bit ASNs.
    name : str, default is Undefined, required
        Name is the name of the BGP instance. It is a unique identifier for the BGP instance within the cluster configuration.
    peers : [CiliumIoV2alpha1CiliumBGPClusterConfigSpecBgpInstancesItems0PeersItems0], default is Undefined, optional
        Peers is a list of neighboring BGP peers for this virtual router
    """


    localASN?: int

    name: str

    peers?: [CiliumIoV2alpha1CiliumBGPClusterConfigSpecBgpInstancesItems0PeersItems0]


    check:
        localASN <= 4.294967295e+09 if localASN not in [None, Undefined]
        localASN >= 1 if localASN not in [None, Undefined]
        len(name) <= 255
        len(name) >= 1


schema CiliumIoV2alpha1CiliumBGPClusterConfigSpecBgpInstancesItems0PeersItems0:
    """
    cilium io v2alpha1 cilium b g p cluster config spec bgp instances items0 peers items0

    Attributes
    ----------
    name : str, default is Undefined, required
        Name is the name of the BGP peer. It is a unique identifier for the peer within the BGP instance.
    peerASN : int, default is Undefined, optional
        PeerASN is the ASN of the peer BGP router. Supports extended 32bit ASNs.
    peerAddress : str, default is Undefined, optional
        PeerAddress is the IP address of the neighbor. Supports IPv4 and IPv6 addresses.
    peerConfigRef : CiliumIoV2alpha1CiliumBGPClusterConfigSpecBgpInstancesItems0PeersItems0PeerConfigRef, default is Undefined, optional
        peer config ref
    """


    name: str

    peerASN?: int

    peerAddress?: str

    peerConfigRef?: CiliumIoV2alpha1CiliumBGPClusterConfigSpecBgpInstancesItems0PeersItems0PeerConfigRef


    check:
        len(name) <= 255
        len(name) >= 1
        peerASN <= 4.294967295e+09 if peerASN not in [None, Undefined]
        peerASN >= 1 if peerASN not in [None, Undefined]
        _regex_match(str(peerAddress), r"((^\s*((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))\s*$)|(^\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)(\.(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)){3}))|:)))(%.+)?\s*$))") if peerAddress


schema CiliumIoV2alpha1CiliumBGPClusterConfigSpecBgpInstancesItems0PeersItems0PeerConfigRef:
    """
    PeerConfigRef is a reference to a peer configuration resource. If not specified, the default BGP configuration is used for this peer.

    Attributes
    ----------
    group : str, default is "cilium.io", optional
        Group is the group of the peer config resource. If not specified, the default of "cilium.io" is used.
    kind : str, default is "CiliumBGPPeerConfig", optional
        Kind is the kind of the peer config resource. If not specified, the default of "CiliumBGPPeerConfig" is used.
    name : str, default is Undefined, required
        Name is the name of the peer config resource. Name refers to the name of a Kubernetes object (typically a CiliumBGPPeerConfig).
    """


    group?: str = "cilium.io"

    kind?: str = "CiliumBGPPeerConfig"

    name: str


schema CiliumIoV2alpha1CiliumBGPClusterConfigSpecNodeSelector:
    """
    NodeSelector selects a group of nodes where this BGP Cluster config applies. If empty / nil this config applies to all nodes.

    Attributes
    ----------
    matchExpressions : [CiliumIoV2alpha1CiliumBGPClusterConfigSpecNodeSelectorMatchExpressionsItems0], default is Undefined, optional
        matchExpressions is a list of label selector requirements. The requirements are ANDed.
    matchLabels : {str:str}, default is Undefined, optional
        matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
    """


    matchExpressions?: [CiliumIoV2alpha1CiliumBGPClusterConfigSpecNodeSelectorMatchExpressionsItems0]

    matchLabels?: {str:str}


    check:
        all _, matchLabels in matchLabels {_regex_match(str(matchLabels), r"^(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$") if matchLabels } if matchLabels


schema CiliumIoV2alpha1CiliumBGPClusterConfigSpecNodeSelectorMatchExpressionsItems0:
    """
    A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.

    Attributes
    ----------
    key : str, default is Undefined, required
        key is the label key that the selector applies to.
    operator : str, default is Undefined, required
        operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
    values : [str], default is Undefined, optional
        values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    """


    key: str

    operator: "In" | "NotIn" | "Exists" | "DoesNotExist"

    values?: [str]


