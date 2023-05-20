.class Lanetwork/channel/entity/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field final synthetic b:I

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lanetwork/channel/entity/c;


# direct methods
.method constructor <init>(Lanetwork/channel/entity/c;Lanetwork/channel/aidl/ParcelableNetworkListener;ILjava/util/Map;)V
    .registers 5

    .line 60
    iput-object p1, p0, Lanetwork/channel/entity/d;->d:Lanetwork/channel/entity/c;

    iput-object p2, p0, Lanetwork/channel/entity/d;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iput p3, p0, Lanetwork/channel/entity/d;->b:I

    iput-object p4, p0, Lanetwork/channel/entity/d;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 64
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/entity/d;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iget v1, p0, Lanetwork/channel/entity/d;->b:I

    new-instance v2, Lanetwork/channel/aidl/ParcelableHeader;

    iget v3, p0, Lanetwork/channel/entity/d;->b:I

    iget-object v4, p0, Lanetwork/channel/entity/d;->c:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lanetwork/channel/aidl/ParcelableHeader;-><init>(ILjava/util/Map;)V

    invoke-interface {v0, v1, v2}, Lanetwork/channel/aidl/ParcelableNetworkListener;->onResponseCode(ILanetwork/channel/aidl/ParcelableHeader;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method
