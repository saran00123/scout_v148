.class final Lanetwork/channel/aidl/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lanetwork/channel/aidl/ParcelableRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;
    .registers 2

    .line 171
    invoke-static {p1}, Lanetwork/channel/aidl/ParcelableRequest;->readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object p1

    return-object p1
.end method

.method public a(I)[Lanetwork/channel/aidl/ParcelableRequest;
    .registers 2

    .line 176
    new-array p1, p1, [Lanetwork/channel/aidl/ParcelableRequest;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 168
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/e;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 168
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/e;->a(I)[Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object p1

    return-object p1
.end method
