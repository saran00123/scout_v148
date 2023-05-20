.class Lanetwork/channel/aidl/NetworkService$1;
.super Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;
.source "Taobao"


# instance fields
.field final synthetic this$0:Lanetwork/channel/aidl/NetworkService;


# direct methods
.method constructor <init>(Lanetwork/channel/aidl/NetworkService;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkService$1;->this$0:Lanetwork/channel/aidl/NetworkService;

    invoke-direct {p0}, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lanetwork/channel/aidl/RemoteNetwork;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 36
    iget-object p1, p0, Lanetwork/channel/aidl/NetworkService$1;->this$0:Lanetwork/channel/aidl/NetworkService;

    invoke-static {p1}, Lanetwork/channel/aidl/NetworkService;->a(Lanetwork/channel/aidl/NetworkService;)Lanetwork/channel/aidl/RemoteNetwork$Stub;

    move-result-object p1

    goto :goto_10

    :cond_a
    iget-object p1, p0, Lanetwork/channel/aidl/NetworkService$1;->this$0:Lanetwork/channel/aidl/NetworkService;

    invoke-static {p1}, Lanetwork/channel/aidl/NetworkService;->b(Lanetwork/channel/aidl/NetworkService;)Lanetwork/channel/aidl/RemoteNetwork$Stub;

    move-result-object p1

    :goto_10
    return-object p1
.end method
