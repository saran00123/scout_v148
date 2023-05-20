.class public final Lcom/amazon/identity/auth/device/api/authorization/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/identity/auth/device/api/authorization/User;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.authorization.User"


# instance fields
.field private final userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/User$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/api/authorization/User$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_21

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/identity/auth/device/api/authorization/User$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/User;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    return-void
.end method

.method public static fetch(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/Listener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/identity/auth/device/api/Listener<",
            "Lcom/amazon/identity/auth/device/api/authorization/User;",
            "Lcom/amazon/identity/auth/device/AuthError;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/User;->fetch(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;Lcom/amazon/identity/auth/device/api/Listener;)V

    return-void
.end method

.method static fetch(Landroid/content/Context;Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;Lcom/amazon/identity/auth/device/api/Listener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;",
            "Lcom/amazon/identity/auth/device/api/Listener<",
            "Lcom/amazon/identity/auth/device/api/authorization/User;",
            "Lcom/amazon/identity/auth/device/AuthError;",
            ">;)V"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/User;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " calling fetch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    sget-object v1, Lcom/amazon/identity/auth/device/utils/LWAConstants$PROFILE_BUNDLE_KEY;->FAIL_ON_INSUFFICIENT_SCOPE:Lcom/amazon/identity/auth/device/utils/LWAConstants$PROFILE_BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/utils/LWAConstants$PROFILE_BUNDLE_KEY;->val:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    new-instance v1, Lcom/amazon/identity/auth/device/api/authorization/User$2;

    invoke-direct {v1, p2}, Lcom/amazon/identity/auth/device/api/authorization/User$2;-><init>(Lcom/amazon/identity/auth/device/api/Listener;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/amazon/identity/auth/device/authorization/InternalAuthManager;->getProfile(Landroid/content/Context;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/shared/APIListener;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static userFromBundle(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/api/authorization/User;
    .registers 5

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 179
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 182
    :cond_25
    new-instance p0, Lcom/amazon/identity/auth/device/api/authorization/User;

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/api/authorization/User;-><init>(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 164
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 165
    :cond_13
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/User;

    .line 166
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    if-nez v2, :cond_1e

    .line 167
    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    if-eqz p1, :cond_27

    return v1

    .line 168
    :cond_1e
    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    return v1

    :cond_27
    return v0
.end method

.method public getUserEmail()Ljava/lang/String;
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->EMAIL:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->val:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->USER_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->val:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->NAME:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->val:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserPostalCode()Ljava/lang/String;
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->POSTAL_CODE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$PROFILE_KEY;->val:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_a
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    .line 174
    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s={userInfo=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 192
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/User;->userInfo:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_13

    :cond_32
    return-void
.end method
