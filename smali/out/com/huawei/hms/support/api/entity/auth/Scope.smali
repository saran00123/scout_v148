.class public Lcom/huawei/hms/support/api/entity/auth/Scope;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mScopeUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/Scope$a;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/auth/Scope$a;-><init>()V

    sput-object v0, Lcom/huawei/hms/support/api/entity/auth/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/Scope;->mScopeUri:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/Scope;->mScopeUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/Scope;->mScopeUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/huawei/hms/support/api/entity/auth/Scope;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_a
    check-cast p1, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/Scope;->mScopeUri:Ljava/lang/String;

    iget-object p1, p1, Lcom/huawei/hms/support/api/entity/auth/Scope;->mScopeUri:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/huawei/hms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equeals(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/entity/auth/Scope;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getScopeUri()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/Scope;->mScopeUri:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/Scope;->mScopeUri:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/Scope;->mScopeUri:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/huawei/hms/support/api/entity/auth/Scope;->mScopeUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
