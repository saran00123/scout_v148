.class public Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;
.super Ljava/lang/Object;
.source "SafeParcelReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;
    }
.end annotation


# static fields
.field private static final BIT16_MARK:I = 0xffff

.field private static final FIELD_ID_CHECKER:I = 0x4f45

.field private static final MAX_ARRAY_LENGTH:I = 0x400

.field private static final NEGATIVE_MARK:I = -0x10000

.field private static final OFFSET16:I = 0x10


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBigDecimal(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
    .registers 5

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    add-int/2addr p1, v0

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 11
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p1
.end method

.method public static createBigDecimalArray(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;
    .registers 9

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 4
    new-array p0, v1, [Ljava/math/BigDecimal;

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    .line 9
    new-array v3, v2, [Ljava/math/BigDecimal;

    :goto_1a
    if-ge v1, v2, :cond_33

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 13
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 14
    new-instance v4, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_33
    add-int/2addr v0, p1

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public static createBigInteger(Landroid/os/Parcel;I)Ljava/math/BigInteger;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static createBigIntegerArray(Landroid/os/Parcel;I)[Ljava/math/BigInteger;
    .registers 8

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 4
    new-array p0, v1, [Ljava/math/BigInteger;

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    .line 9
    new-array v3, v2, [Ljava/math/BigInteger;

    :goto_1a
    if-ge v1, v2, :cond_2a

    .line 12
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2a
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public static createBooleanArray(Landroid/os/Parcel;I)[Z
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Z

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createBooleanList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v2, :cond_32

    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    move v5, v3

    .line 14
    :goto_28
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_32
    add-int/2addr v0, p1

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createBundle(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createByteArray(Landroid/os/Parcel;I)[B
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [B

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createByteArrayArray(Landroid/os/Parcel;I)[[B
    .registers 7

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 8
    invoke-static {p0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    .line 9
    new-array v2, v1, [[B

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_24

    .line 11
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_24
    add-int/2addr v0, p1

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public static createByteArraySparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 8
    invoke-static {p0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    .line 9
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_2c

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2c
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public static createCharArray(Landroid/os/Parcel;I)[C
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [C

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createDoubleArray(Landroid/os/Parcel;I)[D
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [D

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createDoubleList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2c

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2c
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createDoubleSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_30

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_30
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createFloatArray(Landroid/os/Parcel;I)[F
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [F

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createFloatList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2c

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2c
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createFloatSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_30

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_30
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createIBinderArray(Landroid/os/Parcel;I)[Landroid/os/IBinder;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Landroid/os/IBinder;

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createIBinderList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createIBinderSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 8
    invoke-static {p0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    .line 9
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_2c

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2c
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v2
.end method

.method public static createIntArray(Landroid/os/Parcel;I)[I
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [I

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createIntegerList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2c

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2c
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createLongArray(Landroid/os/Parcel;I)[J
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [J

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createLongList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2c

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2c
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createParcel(Landroid/os/Parcel;I)Landroid/os/Parcel;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p0, v0, p1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    add-int/2addr p1, v0

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createParcelArray(Landroid/os/Parcel;I)[Landroid/os/Parcel;
    .registers 9

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_e

    .line 4
    new-array p0, v1, [Landroid/os/Parcel;

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    .line 9
    new-array v3, v2, [Landroid/os/Parcel;

    :goto_1a
    if-ge v1, v2, :cond_3d

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x0

    .line 14
    aput-object v4, v3, v1

    goto :goto_3a

    .line 16
    :cond_26
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .line 17
    invoke-static {p0, v4, v5}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 19
    invoke-virtual {v6, p0, v5, v4}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 20
    aput-object v6, v3, v1

    add-int/2addr v4, v5

    .line 21
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3d
    add-int/2addr v0, p1

    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public static createParcelList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_c

    return-object v1

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v2, :cond_40

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_28

    .line 14
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 16
    :cond_28
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    .line 17
    invoke-static {p0, v5, v6}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 19
    invoke-virtual {v7, p0, v6, v5}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 20
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v6

    .line 21
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_40
    add-int/2addr v0, p1

    .line 25
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public static createParcelSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_c

    return-object v1

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    .line 9
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v2, :cond_44

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_2c

    .line 15
    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_41

    .line 17
    :cond_2c
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    .line 18
    invoke-static {p0, v6, v7}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 20
    invoke-virtual {v8, p0, v7, v6}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 21
    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/2addr v7, v6

    .line 22
    invoke-virtual {p0, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_44
    add-int/2addr v0, p1

    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method public static createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static createSparseBooleanArray(Landroid/os/Parcel;I)Landroid/util/SparseBooleanArray;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createSparseIntArray(Landroid/os/Parcel;I)Landroid/util/SparseIntArray;
    .registers 8

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2c

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2c
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createSparseLongArray(Landroid/os/Parcel;I)Landroid/util/SparseLongArray;
    .registers 10

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_c

    return-object v1

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1a

    .line 9
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    .line 11
    :cond_1a
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 12
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v2, :cond_36

    .line 15
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_33

    .line 16
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/SparseLongArray;->append(IJ)V

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_36
    add-int/2addr v0, p1

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createString(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_e

    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    .line 6
    :cond_e
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createStringList(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createStringSparseArray(Landroid/os/Parcel;I)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 9
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v2, :cond_2c

    .line 12
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2c
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TC;>;)[TC;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_10

    const/4 p0, 0x0

    .line 4
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_10
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static createTypedList(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TC;>;)",
            "Ljava/util/ArrayList<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static createTypedSparseArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/util/SparseArray;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TC;>;)",
            "Landroid/util/SparseArray<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_c

    return-object v1

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 8
    invoke-static {p0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureArrayLengthValid(Landroid/os/Parcel;I)V

    .line 9
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v2, :cond_34

    .line 13
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 14
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2e

    :cond_2d
    move-object v6, v1

    .line 15
    :goto_2e
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_34
    add-int/2addr v0, p1

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v3
.end method

.method private static ensureArrayLengthValid(Landroid/os/Parcel;I)V
    .registers 3

    const/16 v0, 0x400

    if-gt p1, v0, :cond_5

    return-void

    .line 1
    :cond_5
    new-instance p1, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;

    const-string v0, "arraySize cannot be beyond 65535"

    invoke-direct {p1, v0, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw p1
.end method

.method public static ensureAtEnd(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method private static ensureDataPositionValid(Landroid/os/Parcel;II)V
    .registers 3

    if-ltz p1, :cond_9

    .line 1
    invoke-static {p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->isOutOfIntBoundary(II)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance p1, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;

    const-string p2, "dataPosition cannot be beyond integer scope"

    invoke-direct {p1, p2, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw p1
.end method

.method public static getFieldId(I)I
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private static isOutOfIntBoundary(II)Z
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_14

    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-gez p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method public static readBoolean(Landroid/os/Parcel;I)Z
    .registers 3

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static readBooleanObject(Landroid/os/Parcel;I)Ljava/lang/Boolean;
    .registers 5

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 v2, 0x4

    .line 5
    invoke-static {p0, p1, v0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;III)V

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static readByte(Landroid/os/Parcel;I)B
    .registers 3

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static readChar(Landroid/os/Parcel;I)C
    .registers 3

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-char p0, p0

    return p0
.end method

.method public static readDouble(Landroid/os/Parcel;I)D
    .registers 3

    const/16 v0, 0x8

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public static readDoubleObject(Landroid/os/Parcel;I)Ljava/lang/Double;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/16 v1, 0x8

    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;III)V

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static readFloat(Landroid/os/Parcel;I)F
    .registers 3

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0
.end method

.method public static readFloatObject(Landroid/os/Parcel;I)Ljava/lang/Float;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v1, 0x4

    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;III)V

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static readHeader(Landroid/os/Parcel;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static readIBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_c
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    add-int/2addr p1, v0

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static readInt(Landroid/os/Parcel;I)I
    .registers 3

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static readIntegerObject(Landroid/os/Parcel;I)Ljava/lang/Integer;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v1, 0x4

    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;III)V

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static readList(Landroid/os/Parcel;ILjava/util/List;Ljava/lang/ClassLoader;)V
    .registers 5

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eqz p1, :cond_14

    .line 4
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    add-int/2addr p1, v0

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_14
    return-void
.end method

.method public static readLong(Landroid/os/Parcel;I)J
    .registers 3

    const/16 v0, 0x8

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static readLongObject(Landroid/os/Parcel;I)Ljava/lang/Long;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/16 v1, 0x8

    .line 5
    invoke-static {p0, p1, v0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;III)V

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static readShort(Landroid/os/Parcel;I)S
    .registers 3

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->sizeChecker(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static readSize(Landroid/os/Parcel;I)I
    .registers 4

    const/high16 v0, -0x10000

    and-int v1, p1, v0

    if-eq v1, v0, :cond_d

    shr-int/lit8 p0, p1, 0x10

    const p1, 0xffff

    and-int/2addr p0, p1

    goto :goto_11

    .line 1
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    :goto_11
    return p0
.end method

.method private static sizeChecker(Landroid/os/Parcel;II)V
    .registers 7

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    if-ne p1, p2, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " got "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1
.end method

.method private static sizeChecker(Landroid/os/Parcel;III)V
    .registers 7

    if-ne p2, p3, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " got "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (0x"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static skipUnknownField(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureDataPositionValid(Landroid/os/Parcel;II)V

    add-int/2addr p1, v0

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static validateObjectHeader(Landroid/os/Parcel;)I
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    invoke-static {p0, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readSize(Landroid/os/Parcel;I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 4
    invoke-static {v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    const/16 v4, 0x4f45

    if-eq v3, v4, :cond_2a

    const-string v1, "Expected object header. Got 0x"

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_26
    invoke-direct {v2, v1, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v2

    :cond_2a
    add-int/2addr v1, v2

    if-lt v1, v2, :cond_34

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gt v1, v0, :cond_34

    return v1

    .line 13
    :cond_34
    new-instance v0, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader$ParseException;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method
