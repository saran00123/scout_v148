.class public final Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;
.super Ljava/lang/Object;
.source "InteractiveRequestRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fragmentWrapper:Landroid/os/Bundle;

.field private final requestExtras:Landroid/os/Bundle;

.field private final requestId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ParcelClassLoader"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestExtras:Landroid/os/Bundle;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->fragmentWrapper:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord$1;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestExtras:Landroid/os/Bundle;

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

    .line 104
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 105
    :cond_13
    check-cast p1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;

    .line 106
    iget-object v2, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->fragmentWrapper:Landroid/os/Bundle;

    if-nez v2, :cond_1e

    .line 107
    iget-object v2, p1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->fragmentWrapper:Landroid/os/Bundle;

    if-eqz v2, :cond_27

    return v1

    .line 108
    :cond_1e
    iget-object v3, p1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->fragmentWrapper:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 109
    :cond_27
    iget-object v2, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestExtras:Landroid/os/Bundle;

    if-nez v2, :cond_30

    .line 110
    iget-object v2, p1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_39

    return v1

    .line 111
    :cond_30
    iget-object v3, p1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    return v1

    .line 112
    :cond_39
    iget-object v2, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestId:Ljava/lang/String;

    if-nez v2, :cond_42

    .line 113
    iget-object p1, p1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestId:Ljava/lang/String;

    if-eqz p1, :cond_4b

    return v1

    .line 114
    :cond_42
    iget-object p1, p1, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    return v1

    :cond_4b
    return v0
.end method

.method getFragmentWrapper()Landroid/os/Bundle;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->fragmentWrapper:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRequestExtras()Landroid/os/Bundle;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->fragmentWrapper:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 95
    iget-object v3, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestExtras:Landroid/os/Bundle;

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_19
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 96
    iget-object v2, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestId:Ljava/lang/String;

    if-nez v2, :cond_20

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_24
    add-int/2addr v0, v1

    return v0
.end method

.method setFragmentWrapper(Landroid/os/Bundle;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->fragmentWrapper:Landroid/os/Bundle;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hasFragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->fragmentWrapper:Landroid/os/Bundle;

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 53
    iget-object p2, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->requestExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 55
    iget-object p2, p0, Lcom/amazon/identity/auth/device/interactive/InteractiveRequestRecord;->fragmentWrapper:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
