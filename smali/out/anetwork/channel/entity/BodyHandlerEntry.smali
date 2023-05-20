.class public Lanetwork/channel/entity/BodyHandlerEntry;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/request/BodyEntry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanetwork/channel/entity/BodyHandlerEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bodyHandler:Lanetwork/channel/aidl/ParcelableBodyHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Lanetwork/channel/entity/BodyHandlerEntry$1;

    invoke-direct {v0}, Lanetwork/channel/entity/BodyHandlerEntry$1;-><init>()V

    sput-object v0, Lanetwork/channel/entity/BodyHandlerEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lanetwork/channel/aidl/ParcelableBodyHandler;

    return-void
.end method

.method public constructor <init>(Lanetwork/channel/IBodyHandler;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lanetwork/channel/aidl/ParcelableBodyHandler;

    .line 25
    new-instance v0, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;

    invoke-direct {v0, p1}, Lanetwork/channel/aidl/adapter/ParcelableBodyHandlerWrapper;-><init>(Lanetwork/channel/IBodyHandler;)V

    iput-object v0, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lanetwork/channel/aidl/ParcelableBodyHandler;

    return-void
.end method

.method synthetic constructor <init>(Lanetwork/channel/entity/BodyHandlerEntry$1;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lanetwork/channel/entity/BodyHandlerEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    :try_start_0
    sget-object v0, Lanet/channel/bytes/a$a;->a:Lanet/channel/bytes/a;

    const/16 v1, 0x800

    .line 39
    invoke-virtual {v0, v1}, Lanet/channel/bytes/a;->a(I)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 40
    :goto_a
    iget-object v3, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lanetwork/channel/aidl/ParcelableBodyHandler;

    invoke-interface {v3}, Lanetwork/channel/aidl/ParcelableBodyHandler;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_25

    .line 41
    iget-object v3, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lanetwork/channel/aidl/ParcelableBodyHandler;

    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lanetwork/channel/aidl/ParcelableBodyHandler;->read([B)I

    move-result v3

    .line 42
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v4

    invoke-virtual {p1, v4, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    goto :goto_a

    .line 45
    :cond_25
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->recycle()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_29

    return v2

    :catch_29
    move-exception p1

    .line 47
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RemoteException"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 59
    iget-object p2, p0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lanetwork/channel/aidl/ParcelableBodyHandler;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void
.end method
