.class final Lanetwork/channel/aidl/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lanetwork/channel/aidl/NetworkResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;
    .registers 2

    .line 150
    invoke-static {p1}, Lanetwork/channel/aidl/NetworkResponse;->readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object p1

    return-object p1
.end method

.method public a(I)[Lanetwork/channel/aidl/NetworkResponse;
    .registers 2

    .line 155
    new-array p1, p1, [Lanetwork/channel/aidl/NetworkResponse;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 147
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/c;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 147
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/c;->a(I)[Lanetwork/channel/aidl/NetworkResponse;

    move-result-object p1

    return-object p1
.end method
