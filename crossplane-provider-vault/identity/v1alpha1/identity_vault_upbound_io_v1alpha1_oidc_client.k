"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema OidcClient:
    r"""
    OidcClient is the Schema for the OidcClients API. Provision OIDC Clients in Vault.

    Attributes
    ----------
    apiVersion : str, default is "identity.vault.upbound.io/v1alpha1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "OidcClient", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : IdentityVaultUpboundIoV1alpha1OidcClientSpec, default is Undefined, required
        spec
    status : IdentityVaultUpboundIoV1alpha1OidcClientStatus, default is Undefined, optional
        status
    """


    apiVersion: "identity.vault.upbound.io/v1alpha1" = "identity.vault.upbound.io/v1alpha1"

    kind: "OidcClient" = "OidcClient"

    metadata?: v1.ObjectMeta

    spec: IdentityVaultUpboundIoV1alpha1OidcClientSpec

    status?: IdentityVaultUpboundIoV1alpha1OidcClientStatus


schema IdentityVaultUpboundIoV1alpha1OidcClientSpec:
    r"""
    OidcClientSpec defines the desired state of OidcClient

    Attributes
    ----------
    deletionPolicy : str, default is "Delete", optional
        DeletionPolicy specifies what will happen to the underlying external when this managed resource is deleted - either "Delete" or "Orphan" the external resource. This field is planned to be deprecated in favor of the ManagementPolicies field in a future release. Currently, both could be set independently and non-default values would be honored if the feature flag is enabled. See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
    forProvider : IdentityVaultUpboundIoV1alpha1OidcClientSpecForProvider, default is Undefined, required
        for provider
    initProvider : IdentityVaultUpboundIoV1alpha1OidcClientSpecInitProvider, default is Undefined, optional
        init provider
    managementPolicies : [str], default is ["*"], optional
        THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored unless the relevant Crossplane feature flag is enabled, and may be changed or removed without notice. ManagementPolicies specify the array of actions Crossplane is allowed to take on the managed and external resources. This field is planned to replace the DeletionPolicy field in a future release. Currently, both could be set independently and non-default values would be honored if the feature flag is enabled. If both are custom, the DeletionPolicy field will be ignored. See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223 and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
    providerConfigRef : IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    providerRef : IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderRef, default is Undefined, optional
        provider ref
    publishConnectionDetailsTo : IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : IdentityVaultUpboundIoV1alpha1OidcClientSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: IdentityVaultUpboundIoV1alpha1OidcClientSpecForProvider

    initProvider?: IdentityVaultUpboundIoV1alpha1OidcClientSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderConfigRef

    providerRef?: IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderRef

    publishConnectionDetailsTo?: IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: IdentityVaultUpboundIoV1alpha1OidcClientSpecWriteConnectionSecretToRef


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecForProvider:
    r"""
    identity vault upbound io v1alpha1 oidc client spec for provider

    Attributes
    ----------
    accessTokenTtl : float, default is Undefined, optional
        The time-to-live for access tokens obtained by the client. The time-to-live for access tokens obtained by the client.
    assignments : [str], default is Undefined, optional
        A list of assignment resources associated with the client. A list of assignment resources associated with the client.
    clientType : str, default is Undefined, optional
        The client type based on its ability to maintain confidentiality of credentials. The following client types are supported: confidential, public. Defaults to confidential. The client type based on its ability to maintain confidentiality of credentials.Defaults to 'confidential'.
    idTokenTtl : float, default is Undefined, optional
        The time-to-live for ID tokens obtained by the client. The value should be less than the verification_ttl on the key. The time-to-live for ID tokens obtained by the client. The value should be less than the verification_ttl on the key.
    key : str, default is Undefined, optional
        A reference to a named key resource in Vault. This cannot be modified after creation. If not provided, the default key is used. A reference to a named key resource in Vault. This cannot be modified after creation.
    name : str, default is Undefined, optional
        The name of the client. The name of the client.
    namespace : str, default is Undefined, optional
        The namespace to provision the resource in. The value should not contain leading or trailing forward slashes. The namespace is always relative to the provider's configured namespace. Available only for Vault Enterprise. Target namespace. (requires Enterprise)
    redirectUris : [str], default is Undefined, optional
        Redirection URI values used by the client. One of these values must exactly match the redirect_uri parameter value used in each authentication request. Redirection URI values used by the client. One of these values must exactly match the redirect_uri parameter value used in each authentication request.
    """


    accessTokenTtl?: float

    assignments?: [str]

    clientType?: str

    idTokenTtl?: float

    key?: str

    name?: str

    namespace?: str

    redirectUris?: [str]


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecInitProvider:
    r"""
    THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored unless the relevant Crossplane feature flag is enabled, and may be changed or removed without notice. InitProvider holds the same fields as ForProvider, with the exception of Identifier and other resource reference fields. The fields that are in InitProvider are merged into ForProvider when the resource is created. The same fields are also added to the terraform ignore_changes hook, to avoid updating them after creation. This is useful for fields that are required on creation, but we do not desire to update them after creation, for example because of an external controller is managing them, like an autoscaler.

    Attributes
    ----------
    accessTokenTtl : float, default is Undefined, optional
        The time-to-live for access tokens obtained by the client. The time-to-live for access tokens obtained by the client.
    assignments : [str], default is Undefined, optional
        A list of assignment resources associated with the client. A list of assignment resources associated with the client.
    clientType : str, default is Undefined, optional
        The client type based on its ability to maintain confidentiality of credentials. The following client types are supported: confidential, public. Defaults to confidential. The client type based on its ability to maintain confidentiality of credentials.Defaults to 'confidential'.
    idTokenTtl : float, default is Undefined, optional
        The time-to-live for ID tokens obtained by the client. The value should be less than the verification_ttl on the key. The time-to-live for ID tokens obtained by the client. The value should be less than the verification_ttl on the key.
    key : str, default is Undefined, optional
        A reference to a named key resource in Vault. This cannot be modified after creation. If not provided, the default key is used. A reference to a named key resource in Vault. This cannot be modified after creation.
    name : str, default is Undefined, optional
        The name of the client. The name of the client.
    namespace : str, default is Undefined, optional
        The namespace to provision the resource in. The value should not contain leading or trailing forward slashes. The namespace is always relative to the provider's configured namespace. Available only for Vault Enterprise. Target namespace. (requires Enterprise)
    redirectUris : [str], default is Undefined, optional
        Redirection URI values used by the client. One of these values must exactly match the redirect_uri parameter value used in each authentication request. Redirection URI values used by the client. One of these values must exactly match the redirect_uri parameter value used in each authentication request.
    """


    accessTokenTtl?: float

    assignments?: [str]

    clientType?: str

    idTokenTtl?: float

    key?: str

    name?: str

    namespace?: str

    redirectUris?: [str]


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderConfigRef:
    r"""
    ProviderConfigReference specifies how the provider that will be used to create, observe, update, and delete this managed resource should be configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderConfigRefPolicy


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderConfigRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required. The default is 'Required', which means the reconcile will fail if the reference cannot be resolved. 'Optional' means this reference will be a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default is 'IfNotPresent', which will attempt to resolve the reference only when the corresponding field is not present. Use 'Always' to resolve the reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderRef:
    r"""
    ProviderReference specifies the provider that will be used to create, observe, update, and delete this managed resource. Deprecated: Please use ProviderConfigReference, i.e. `providerConfigRef`

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderRefPolicy


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecProviderRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required. The default is 'Required', which means the reconcile will fail if the reference cannot be resolved. 'Optional' means this reference will be a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default is 'IfNotPresent', which will attempt to resolve the reference only when the corresponding field is not present. Use 'Always' to resolve the reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsTo:
    r"""
    PublishConnectionDetailsTo specifies the connection secret config which contains a name, metadata and a reference to secret store config to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsToConfigRef

    metadata?: IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsToMetadata

    name: str


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsToConfigRef:
    r"""
    SecretStoreConfigRef specifies which secret store config should be used for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsToConfigRefPolicy


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsToConfigRefPolicy:
    r"""
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required. The default is 'Required', which means the reconcile will fail if the reference cannot be resolved. 'Optional' means this reference will be a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default is 'IfNotPresent', which will attempt to resolve the reference only when the corresponding field is not present. Use 'Always' to resolve the reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecPublishConnectionDetailsToMetadata:
    r"""
    Metadata is the metadata for connection secret.

    Attributes
    ----------
    annotations : {str:str}, default is Undefined, optional
        Annotations are the annotations to be added to connection secret. - For Kubernetes secrets, this will be used as "metadata.annotations". - It is up to Secret Store implementation for others store types.
    labels : {str:str}, default is Undefined, optional
        Labels are the labels/tags to be added to connection secret. - For Kubernetes secrets, this will be used as "metadata.labels". - It is up to Secret Store implementation for others store types.
    $type : str, default is Undefined, optional
        Type is the SecretType for the connection secret. - Only valid for Kubernetes Secret Stores.
    """


    annotations?: {str:str}

    labels?: {str:str}

    $type?: str


schema IdentityVaultUpboundIoV1alpha1OidcClientSpecWriteConnectionSecretToRef:
    r"""
    WriteConnectionSecretToReference specifies the namespace and name of a Secret to which any connection details for this managed resource should be written. Connection details frequently include the endpoint, username, and password required to connect to the managed resource. This field is planned to be replaced in a future release in favor of PublishConnectionDetailsTo. Currently, both could be set independently and connection details would be published to both without affecting each other.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the secret.
    namespace : str, default is Undefined, required
        Namespace of the secret.
    """


    name: str

    namespace: str


schema IdentityVaultUpboundIoV1alpha1OidcClientStatus:
    r"""
    OidcClientStatus defines the observed state of OidcClient.

    Attributes
    ----------
    atProvider : IdentityVaultUpboundIoV1alpha1OidcClientStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [IdentityVaultUpboundIoV1alpha1OidcClientStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    """


    atProvider?: IdentityVaultUpboundIoV1alpha1OidcClientStatusAtProvider

    conditions?: [IdentityVaultUpboundIoV1alpha1OidcClientStatusConditionsItems0]


schema IdentityVaultUpboundIoV1alpha1OidcClientStatusAtProvider:
    r"""
    identity vault upbound io v1alpha1 oidc client status at provider

    Attributes
    ----------
    accessTokenTtl : float, default is Undefined, optional
        The time-to-live for access tokens obtained by the client. The time-to-live for access tokens obtained by the client.
    assignments : [str], default is Undefined, optional
        A list of assignment resources associated with the client. A list of assignment resources associated with the client.
    clientId : str, default is Undefined, optional
        The Client ID from Vault.
    clientType : str, default is Undefined, optional
        The client type based on its ability to maintain confidentiality of credentials. The following client types are supported: confidential, public. Defaults to confidential. The client type based on its ability to maintain confidentiality of credentials.Defaults to 'confidential'.
    id : str, default is Undefined, optional
        id
    idTokenTtl : float, default is Undefined, optional
        The time-to-live for ID tokens obtained by the client. The value should be less than the verification_ttl on the key. The time-to-live for ID tokens obtained by the client. The value should be less than the verification_ttl on the key.
    key : str, default is Undefined, optional
        A reference to a named key resource in Vault. This cannot be modified after creation. If not provided, the default key is used. A reference to a named key resource in Vault. This cannot be modified after creation.
    name : str, default is Undefined, optional
        The name of the client. The name of the client.
    namespace : str, default is Undefined, optional
        The namespace to provision the resource in. The value should not contain leading or trailing forward slashes. The namespace is always relative to the provider's configured namespace. Available only for Vault Enterprise. Target namespace. (requires Enterprise)
    redirectUris : [str], default is Undefined, optional
        Redirection URI values used by the client. One of these values must exactly match the redirect_uri parameter value used in each authentication request. Redirection URI values used by the client. One of these values must exactly match the redirect_uri parameter value used in each authentication request.
    """


    accessTokenTtl?: float

    assignments?: [str]

    clientId?: str

    clientType?: str

    id?: str

    idTokenTtl?: float

    key?: str

    name?: str

    namespace?: str

    redirectUris?: [str]


schema IdentityVaultUpboundIoV1alpha1OidcClientStatusConditionsItems0:
    r"""
    A Condition that may apply to a resource.

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, required
        LastTransitionTime is the last time this condition transitioned from one status to another.
    message : str, default is Undefined, optional
        A Message containing details about this condition's last transition from one status to another, if any.
    reason : str, default is Undefined, required
        A Reason for this condition's last transition from one status to another.
    status : str, default is Undefined, required
        Status of this condition; is it currently True, False, or Unknown?
    $type : str, default is Undefined, required
        Type of this condition. At most one of each condition type may apply to a resource at any point in time.
    """


    lastTransitionTime: str

    message?: str

    reason: str

    status: str

    $type: str


