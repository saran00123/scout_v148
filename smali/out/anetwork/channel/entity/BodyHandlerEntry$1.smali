.class final Lanetwork/channel/entity/BodyHandlerEntry$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lanetwork/channel/entity/BodyHandlerEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lanetwork/channel/entity/BodyHandlerEntry;
    .registers 4

    .line 65
    new-instance v0, Lanetwork/channel/entity/BodyHandlerEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/entity/BodyHandlerEntry;-><init>(Lanetwork/channel/entity/BodyHandlerEntry$1;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;->asInterface(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelableBodyHandler;

    move-result-object p1

    iput-object p1, v0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lanetwork/channel/aidl/ParcelableBodyHandler;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lanetwork/channel/entity/BodyHandlerEntry$1;->createFromParcel(Landroid/os/Parcel;)Lanetwork/channel/entity/BodyHandlerEntry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lanetwork/channel/entity/BodyHandlerEntry;
    .registers 2

    .line 72
    new-array p1, p1, [Lanetwork/channel/entity/BodyHandlerEntry;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lanetwork/channel/entity/BodyHandlerEntry$1;->newArray(I)[Lanetwork/channel/entity/BodyHandlerEntry;

    move-result-object p1

    return-object p1
.end method
