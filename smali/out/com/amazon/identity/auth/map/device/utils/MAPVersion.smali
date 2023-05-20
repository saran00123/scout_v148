.class public final Lcom/amazon/identity/auth/map/device/utils/MAPVersion;
.super Ljava/lang/Object;
.source "MAPVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/identity/auth/map/device/utils/MAPVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.map.device.utils.MAPVersion"

.field private static final VERSION_SEPERATOR:Ljava/lang/String; = "\\."

.field public static final VERSION_ZERO:Lcom/amazon/identity/auth/map/device/utils/MAPVersion;


# instance fields
.field private final mVersion:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;

    const-string v1, "0.0.0"

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->VERSION_ZERO:Lcom/amazon/identity/auth/map/device/utils/MAPVersion;

    .line 141
    new-instance v0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion$1;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 29
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    .line 30
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 31
    sget-object p1, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAPVersion Created from PARCEL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAPVersion from String : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_41

    const-string v0, "\\."

    .line 57
    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 58
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    .line 60
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_2a
    if-ge v2, v0, :cond_40

    aget-object v4, p1, v2

    .line 63
    :try_start_2e
    iget-object v5, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v5, v3
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_36} :catch_37

    goto :goto_3b

    .line 65
    :catch_37
    iget-object v4, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    aput v1, v4, v3

    :goto_3b
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_40
    return-void

    .line 55
    :cond_41
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string/jumbo v0, "version must not be null"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([I)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2d

    .line 42
    array-length v0, p1

    if-eqz v0, :cond_25

    .line 46
    iput-object p1, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    .line 47
    sget-object p1, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAPVersion Created : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_25
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "Version must not be empty"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2d
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string/jumbo v0, "version must not be null"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public compare(Lcom/amazon/identity/auth/map/device/utils/MAPVersion;)I
    .registers 8

    .line 102
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->getVersionInfo()[I

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->getVersionInfo()[I

    move-result-object v1

    array-length v1, v1

    .line 104
    iget-object v2, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    array-length v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_21

    .line 106
    iget-object v4, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    aget v4, v4, v3

    aget v5, v0, v3

    if-ne v4, v5, :cond_21

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 110
    :cond_21
    iget-object v1, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 111
    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 112
    iget-object v5, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    array-length v5, v5

    if-ne v3, v5, :cond_3f

    iget-object v3, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    array-length v3, v3

    invoke-virtual {p1}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->getVersionInfo()[I

    move-result-object v5

    array-length v5, v5

    if-ne v3, v5, :cond_3f

    return v2

    .line 117
    :cond_3f
    array-length v2, v0

    iget-object v3, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    array-length v3, v3

    if-eq v2, v3, :cond_5c

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 120
    iget-object v1, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 122
    :cond_5c
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1
    :try_end_60
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_60} :catch_61

    return p1

    :catch_61
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs 2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionInfo()[I
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    invoke-static {v0}, Lcom/amazon/identity/auth/device/utils/MAPVersionHelper;->getVersionAsString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 136
    sget-object p2, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAPVersion writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ints to parcel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p2, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object p2, p0, Lcom/amazon/identity/auth/map/device/utils/MAPVersion;->mVersion:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
