.class final Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$1;
.super Ljava/lang/Object;
.source "AuthCancellation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;
    .registers 4

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;-><init>(Landroid/os/Parcel;Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;
    .registers 2

    .line 32
    new-array p1, p1, [Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$1;->newArray(I)[Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;

    move-result-object p1

    return-object p1
.end method
