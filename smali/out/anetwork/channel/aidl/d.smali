.class final Lanetwork/channel/aidl/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lanetwork/channel/aidl/ParcelableHeader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableHeader;
    .registers 2

    .line 58
    invoke-static {p1}, Lanetwork/channel/aidl/ParcelableHeader;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableHeader;

    move-result-object p1

    return-object p1
.end method

.method public a(I)[Lanetwork/channel/aidl/ParcelableHeader;
    .registers 2

    .line 62
    new-array p1, p1, [Lanetwork/channel/aidl/ParcelableHeader;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/d;->a(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableHeader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/d;->a(I)[Lanetwork/channel/aidl/ParcelableHeader;

    move-result-object p1

    return-object p1
.end method
