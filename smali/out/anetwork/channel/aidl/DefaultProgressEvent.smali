.class public Lanetwork/channel/aidl/DefaultProgressEvent;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lanetwork/channel/NetworkEvent$ProgressEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanetwork/channel/aidl/DefaultProgressEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/Object;

.field e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Lanetwork/channel/aidl/b;

    invoke-direct {v0}, Lanetwork/channel/aidl/b;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/DefaultProgressEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->a:I

    .line 26
    iput p2, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->b:I

    .line 27
    iput p3, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->c:I

    .line 28
    iput-object p4, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->e:[B

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultProgressEvent;
    .registers 3

    .line 96
    new-instance v0, Lanetwork/channel/aidl/DefaultProgressEvent;

    invoke-direct {v0}, Lanetwork/channel/aidl/DefaultProgressEvent;-><init>()V

    .line 98
    :try_start_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->a:I

    .line 99
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->b:I

    .line 100
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->c:I

    .line 101
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_24

    .line 103
    new-array v1, v1, [B

    .line 104
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 105
    iput-object v1, v0, Lanetwork/channel/aidl/DefaultProgressEvent;->e:[B
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBytedata()[B
    .registers 2

    .line 64
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->e:[B

    return-object v0
.end method

.method public getContext()Ljava/lang/Object;
    .registers 2

    .line 56
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .line 70
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->a:I

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 40
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->b:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    .line 48
    iget v0, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->c:I

    return v0
.end method

.method public setContext(Ljava/lang/Object;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->d:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultProgressEvent [index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 89
    iget p2, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget p2, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget p2, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object p2, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->e:[B

    if-eqz p2, :cond_15

    array-length p2, p2

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    :goto_16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object p2, p0, Lanetwork/channel/aidl/DefaultProgressEvent;->e:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
