"""
This is the probe module in k8s.api.core.v1 package.
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""


schema Probe:
    r"""
    Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

    Attributes
    ----------
    exec : ExecAction, default is Undefined, optional
        Exec specifies a command to execute in the container.
    failureThreshold : int, default is Undefined, optional
        Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
    grpc : GRPCAction, default is Undefined, optional
        GRPC specifies a GRPC HealthCheckRequest.
    httpGet : HTTPGetAction, default is Undefined, optional
        HTTPGet specifies an HTTP GET request to perform.
    initialDelaySeconds : int, default is Undefined, optional
        Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    periodSeconds : int, default is Undefined, optional
        How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
    successThreshold : int, default is Undefined, optional
        Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
    tcpSocket : TCPSocketAction, default is Undefined, optional
        TCPSocket specifies a connection to a TCP port.
    terminationGracePeriodSeconds : int, default is Undefined, optional
        Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
    timeoutSeconds : int, default is Undefined, optional
        Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    """


    exec?: ExecAction

    failureThreshold?: int

    grpc?: GRPCAction

    httpGet?: HTTPGetAction

    initialDelaySeconds?: int

    periodSeconds?: int

    successThreshold?: int

    tcpSocket?: TCPSocketAction

    terminationGracePeriodSeconds?: int

    timeoutSeconds?: int


