.class public Lcom/amazon/identity/auth/device/AuthError;
.super Ljava/lang/Exception;
.source "AuthError.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/amazon/identity/auth/device/IAuthError;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;,
        Lcom/amazon/identity/auth/device/AuthError$ERROR_CATEGORY;
    }
.end annotation


# static fields
.field public static final AUTH_ERROR_EXECEPTION:Ljava/lang/String; = "AUTH_ERROR_EXECEPTION"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/identity/auth/device/AuthError;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.AuthError"

.field public static final RESULT_AUTH_ERROR:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _type:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 279
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/AuthError$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/AuthError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V
    .registers 3

    .line 196
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 197
    iput-object p2, p0, Lcom/amazon/identity/auth/device/AuthError;->_type:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V
    .registers 4

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    iput-object p3, p0, Lcom/amazon/identity/auth/device/AuthError;->_type:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    return-void
.end method

.method public static extractError(Landroid/content/Intent;)Lcom/amazon/identity/auth/device/AuthError;
    .registers 2

    :try_start_0
    const-string v0, "AUTH_ERROR_EXECEPTION"

    .line 309
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/AuthError;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    .line 313
    :catch_9
    sget-object p0, Lcom/amazon/identity/auth/device/AuthError;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Error Extracting AuthError"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static extractError(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/AuthError;
    .registers 2

    :try_start_0
    const-string v0, "AUTH_ERROR_EXECEPTION"

    .line 329
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/AuthError;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    .line 333
    :catch_9
    sget-object p0, Lcom/amazon/identity/auth/device/AuthError;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Error Extracting AuthError"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static getAuthError(Ljava/lang/Throwable;Ljava/lang/Class;)Lcom/amazon/identity/auth/device/AuthError;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/identity/auth/device/AuthError;"
        }
    .end annotation

    .line 385
    sget-object v0, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_UNKNOWN:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-static {p0, p1, v0}, Lcom/amazon/identity/auth/device/AuthError;->getAuthError(Ljava/lang/Throwable;Ljava/lang/Class;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)Lcom/amazon/identity/auth/device/AuthError;

    move-result-object p0

    return-object p0
.end method

.method public static getAuthError(Ljava/lang/Throwable;Ljava/lang/Class;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)Lcom/amazon/identity/auth/device/AuthError;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;",
            ")",
            "Lcom/amazon/identity/auth/device/AuthError;"
        }
    .end annotation

    .line 397
    new-instance v0, Lcom/amazon/identity/auth/device/AuthError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, p2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    return-object v0
.end method

.method public static getErrorBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 1

    .line 359
    invoke-static {p0}, Lcom/amazon/identity/auth/device/AuthError;->extractError(Landroid/content/Intent;)Lcom/amazon/identity/auth/device/AuthError;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/AuthError;->getErrorBundle(Lcom/amazon/identity/auth/device/AuthError;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorBundle(Lcom/amazon/identity/auth/device/AuthError;)Landroid/os/Bundle;
    .registers 3

    .line 346
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "AUTH_ERROR_EXECEPTION"

    .line 347
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static getErrorBundle(Ljava/lang/Throwable;Ljava/lang/Class;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 373
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/AuthError;->getAuthError(Ljava/lang/Throwable;Ljava/lang/Class;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)Lcom/amazon/identity/auth/device/AuthError;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/AuthError;->getErrorBundle(Lcom/amazon/identity/auth/device/AuthError;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Lcom/amazon/identity/auth/device/AuthError$ERROR_CATEGORY;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthError;->_type:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->getCategory()Lcom/amazon/identity/auth/device/AuthError$ERROR_CATEGORY;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthError;->_type:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthError cat= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthError;->_type:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->getCategory()Lcom/amazon/identity/auth/device/AuthError$ERROR_CATEGORY;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthError;->_type:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 254
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/AuthError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/AuthError;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 257
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/AuthError;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_19

    :cond_15
    const/4 p2, 0x0

    .line 261
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 263
    :goto_19
    iget-object p2, p0, Lcom/amazon/identity/auth/device/AuthError;->_type:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->value()I

    move-result p2

    invoke-static {}, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->access$000()I

    move-result v0

    if-ge p2, v0, :cond_2b

    .line 264
    iget-object p2, p0, Lcom/amazon/identity/auth/device/AuthError;->_type:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_30

    .line 267
    :cond_2b
    sget-object p2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_UNKNOWN:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 269
    :goto_30
    iget-object p2, p0, Lcom/amazon/identity/auth/device/AuthError;->_type:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->value()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
