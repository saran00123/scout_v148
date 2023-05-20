.class public Lanetwork/channel/aidl/DefaultFinishEvent;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lanetwork/channel/NetworkEvent$FinishEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lanetwork/channel/aidl/DefaultFinishEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:Ljava/lang/String;

.field d:Lanetwork/channel/statist/StatisticData;

.field public final request:Lanet/channel/request/Request;

.field public final rs:Lanet/channel/statist/RequestStatistic;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Lanetwork/channel/aidl/a;

    invoke-direct {v0}, Lanetwork/channel/aidl/a;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/DefaultFinishEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, v0, v0}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/request/Request;Lanet/channel/statist/RequestStatistic;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lanet/channel/request/Request;)V
    .registers 5

    if-eqz p3, :cond_5

    .line 50
    iget-object v0, p3, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0, p1, p2, p3, v0}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/request/Request;Lanet/channel/statist/RequestStatistic;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Lanet/channel/request/Request;Lanet/channel/statist/RequestStatistic;)V
    .registers 6

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lanetwork/channel/statist/StatisticData;

    invoke-direct {v0}, Lanetwork/channel/statist/StatisticData;-><init>()V

    iput-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;

    .line 54
    iput p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    if-eqz p2, :cond_f

    goto :goto_13

    .line 55
    :cond_f
    invoke-static {p1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p2

    :goto_13
    iput-object p2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->request:Lanet/channel/request/Request;

    .line 57
    iput-object p4, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->rs:Lanet/channel/statist/RequestStatistic;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .registers 5

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0, p3}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/request/Request;Lanet/channel/statist/RequestStatistic;)V

    return-void
.end method

.method static a(Landroid/os/Parcel;)Lanetwork/channel/aidl/DefaultFinishEvent;
    .registers 3

    .line 86
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(I)V

    .line 88
    :try_start_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    .line 89
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lanetwork/channel/statist/StatisticData;

    iput-object p0, v0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1a} :catch_1a

    :catch_1a
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Ljava/lang/Object;
    .registers 2

    .line 24
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCode()I
    .registers 2

    .line 32
    iget v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    return v0
.end method

.method public getStatisticData()Lanetwork/channel/statist/StatisticData;
    .registers 2

    .line 40
    iget-object v0, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public setContext(Ljava/lang/Object;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->a:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultFinishEvent ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "code="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statisticData="

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 79
    iget p2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object p2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lanetwork/channel/aidl/DefaultFinishEvent;->d:Lanetwork/channel/statist/StatisticData;

    if-eqz p2, :cond_11

    .line 82
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    :cond_11
    return-void
.end method
