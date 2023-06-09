.class public final Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmConfiguration"
.end annotation


# instance fields
.field public final forceDefaultLicenseUri:Z

.field private final keySetId:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final licenseUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final multiSession:Z

.field public final playClearContentWithoutKey:Z

.field public final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final sessionForClearTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[B)V
    .registers 10
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[B)V"
        }
    .end annotation

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_a

    if-eqz p2, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    .line 650
    :goto_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 651
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    .line 652
    iput-object p2, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 653
    iput-object p3, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    .line 654
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    .line 655
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    .line 656
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 657
    iput-object p7, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    if-eqz p8, :cond_24

    .line 658
    array-length p1, p8

    invoke-static {p8, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[BLcom/google/android/exoplayer2/MediaItem$1;)V
    .registers 10

    .line 607
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 672
    :cond_4
    instance-of v1, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 676
    :cond_a
    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    .line 677
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    .line 678
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    .line 679
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    if-ne v1, v3, :cond_51

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    if-ne v1, v3, :cond_51

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    if-ne v1, v3, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    .line 683
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    .line 684
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_52

    :cond_51
    move v0, v2

    :goto_52
    return v0
.end method

.method public getKeySetId()[B
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    if-eqz v0, :cond_a

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 690
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 691
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 692
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 693
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 694
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 695
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 696
    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->keySetId:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
