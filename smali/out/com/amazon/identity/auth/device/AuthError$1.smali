.class final Lcom/amazon/identity/auth/device/AuthError$1;
.super Ljava/lang/Object;
.source "AuthError.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/AuthError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/identity/auth/device/AuthError;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/AuthError;
    .registers 6

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 284
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    .line 286
    sget-object v3, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_UNKNOWN:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    if-ne v2, v3, :cond_22

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->fromValue(I)Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    move-result-object v2

    .line 289
    :cond_22
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-direct {p1, v0, v1, v2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 280
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/AuthError$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/identity/auth/device/AuthError;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/identity/auth/device/AuthError;
    .registers 2

    .line 294
    new-array p1, p1, [Lcom/amazon/identity/auth/device/AuthError;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 280
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/AuthError$1;->newArray(I)[Lcom/amazon/identity/auth/device/AuthError;

    move-result-object p1

    return-object p1
.end method
