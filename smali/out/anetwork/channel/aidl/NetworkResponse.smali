.class public Lanetwork/channel/aidl/NetworkResponse;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lanetwork/channel/Response;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanetwork/channel/aidl/NetworkResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:[B

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Throwable;

.field private f:Lanetwork/channel/statist/StatisticData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 147
    new-instance v0, Lanetwork/channel/aidl/c;

    invoke-direct {v0}, Lanetwork/channel/aidl/c;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/NetworkResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    .line 83
    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->c:Ljava/lang/String;

    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;
    .registers 6

    const-string v0, "anet.NetworkResponse"

    .line 124
    new-instance v1, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v1}, Lanetwork/channel/aidl/NetworkResponse;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 126
    :try_start_9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lanetwork/channel/aidl/NetworkResponse;->a:I

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lanetwork/channel/aidl/NetworkResponse;->c:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_24

    .line 130
    new-array v4, v4, [B

    iput-object v4, v1, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    .line 131
    iget-object v4, v1, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 133
    :cond_24
    const-class v4, Lanetwork/channel/aidl/NetworkResponse;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, v1, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/util/Map;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_41

    .line 135
    :try_start_30
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lanetwork/channel/statist/StatisticData;

    iput-object p0, v1, Lanetwork/channel/aidl/NetworkResponse;->f:Lanetwork/channel/statist/StatisticData;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_38} :catch_39
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_41

    goto :goto_49

    :catch_39
    :try_start_39
    const-string p0, "[readFromParcel] source.readSerializable() error"

    .line 137
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception p0

    .line 141
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "[readFromParcel]"

    invoke-static {v0, v4, v3, p0, v2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_49
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBytedata()[B
    .registers 2

    .line 47
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    return-object v0
.end method

.method public getConnHeadFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/util/Map;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .registers 2

    .line 93
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getStatisticData()Lanetwork/channel/statist/StatisticData;
    .registers 2

    .line 165
    iget-object v0, p0, Lanetwork/channel/aidl/NetworkResponse;->f:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 88
    iget v0, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    return v0
.end method

.method public setBytedata([B)V
    .registers 2

    .line 51
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    return-void
.end method

.method public setConnHeadFields(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/util/Map;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->c:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/lang/Throwable;

    return-void
.end method

.method public setStatisticData(Lanetwork/channel/statist/StatisticData;)V
    .registers 2

    .line 160
    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->f:Lanetwork/channel/statist/StatisticData;

    return-void
.end method

.method public setStatusCode(I)V
    .registers 2

    .line 42
    iput p1, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    .line 43
    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/aidl/NetworkResponse;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkResponse ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "statusCode="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connHeadFields="

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bytedata="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    if-eqz v1, :cond_35

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_37

    :cond_35
    const-string v2, ""

    :goto_37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statisticData="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/NetworkResponse;->f:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 106
    iget p2, p0, Lanetwork/channel/aidl/NetworkResponse;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    if-eqz p2, :cond_10

    .line 110
    array-length p2, p2

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    .line 112
    :goto_11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1b

    .line 114
    iget-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->b:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 116
    :cond_1b
    iget-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->d:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 117
    iget-object p2, p0, Lanetwork/channel/aidl/NetworkResponse;->f:Lanetwork/channel/statist/StatisticData;

    if-eqz p2, :cond_27

    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    :cond_27
    return-void
.end method
