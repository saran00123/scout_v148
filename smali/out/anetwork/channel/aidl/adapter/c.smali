.class Lanetwork/channel/aidl/adapter/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:B

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;


# direct methods
.method constructor <init>(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;BLjava/lang/Object;)V
    .registers 4

    .line 60
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/c;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    iput-byte p2, p0, Lanetwork/channel/aidl/adapter/c;->a:B

    iput-object p3, p0, Lanetwork/channel/aidl/adapter/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 63
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/c;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    iget-byte v1, p0, Lanetwork/channel/aidl/adapter/c;->a:B

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/c;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->access$000(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;BLjava/lang/Object;)V

    return-void
.end method
