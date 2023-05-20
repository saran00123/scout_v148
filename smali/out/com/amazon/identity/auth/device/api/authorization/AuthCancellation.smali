.class public final Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;
.super Ljava/lang/Object;
.source "AuthCancellation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cause:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    .line 74
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->CAUSE_ID:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->fromCode(I)Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->ON_CANCEL_DESCRIPTION:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-direct {p0, v0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;-><init>(Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->cause:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->description:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$1;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;Ljava/lang/String;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->cause:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    .line 80
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->description:Ljava/lang/String;

    return-void
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

    .line 114
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 115
    :cond_13
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;

    .line 116
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->cause:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    iget-object v3, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->cause:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    if-eq v2, v3, :cond_1c

    return v1

    .line 117
    :cond_1c
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->description:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 118
    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->description:Ljava/lang/String;

    if-eqz p1, :cond_2e

    return v1

    .line 119
    :cond_25
    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->description:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    return v1

    :cond_2e
    return v0
.end method

.method public getCause()Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->cause:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->description:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->cause:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 106
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->description:Ljava/lang/String;

    if-nez v2, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    .line 125
    new-array v0, v0, [Ljava/lang/Object;

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->cause:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->description:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s {cause=\'%s\', description=\'%s\'}"

    .line 125
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 43
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->cause:Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation$Cause;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
