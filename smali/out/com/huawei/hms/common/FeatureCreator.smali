.class public final Lcom/huawei/hms/common/FeatureCreator;
.super Ljava/lang/Object;
.source "FeatureCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/huawei/hms/common/Feature;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hms/common/Feature;
    .registers 11

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    move v5, v1

    :goto_9
    if-gt v1, v0, :cond_37

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_37

    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-static {p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v6

    .line 10
    invoke-static {v6}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_32

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2d

    const/4 v8, 0x3

    if-eq v7, v8, :cond_28

    .line 21
    invoke-static {p1, v6}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 22
    :cond_28
    invoke-static {p1, v6}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v3

    goto :goto_9

    .line 23
    :cond_2d
    invoke-static {p1, v6}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_9

    .line 24
    :cond_32
    invoke-static {p1, v6}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 37
    :cond_37
    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 38
    new-instance p1, Lcom/huawei/hms/common/Feature;

    invoke-direct {p1, v2, v5, v3, v4}, Lcom/huawei/hms/common/Feature;-><init>(Ljava/lang/String;IJ)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/FeatureCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hms/common/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/huawei/hms/common/Feature;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/huawei/hms/common/Feature;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/FeatureCreator;->newArray(I)[Lcom/huawei/hms/common/Feature;

    move-result-object p1

    return-object p1
.end method
