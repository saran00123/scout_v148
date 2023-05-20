.class public Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;
.super Ljava/lang/Object;
.source "SafeParcelWriter.java"


# static fields
.field private static final BIT16_MARK:I = 0xffff

.field private static final FIELD_ID_CHECKER:I = 0x4f45

.field private static final NEGATIVE_MARK:I = -0x10000

.field private static final OFFSET16:I = 0x10


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginObjectHeader(Landroid/os/Parcel;)I
    .registers 2

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p0, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p0

    return p0
.end method

.method public static finishObjectHeader(Landroid/os/Parcel;I)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    return-void
.end method

.method private static getStartPosition(Landroid/os/Parcel;I)I
    .registers 3

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method private static handleDataOver(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 p1, p1, -0x4

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static setHeader(Landroid/os/Parcel;II)V
    .registers 4

    const v0, 0xffff

    if-lt p2, v0, :cond_f

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_f
    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private static setSizeOfData(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TP;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 4
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p1, v1

    .line 7
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static writeBigDecimal(Landroid/os/Parcel;ILjava/math/BigDecimal;Z)V
    .registers 4

    if-eqz p2, :cond_1c

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_22

    :cond_1c
    if-eqz p3, :cond_22

    const/4 p2, 0x0

    .line 6
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static writeBigDecimalArray(Landroid/os/Parcel;I[Ljava/math/BigDecimal;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    array-length p3, p2

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    if-ge v0, p3, :cond_26

    .line 5
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 9
    :cond_26
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_2f

    :cond_2a
    if-eqz p3, :cond_2f

    .line 11
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static writeBigInteger(Landroid/os/Parcel;ILjava/math/BigInteger;Z)V
    .registers 4

    if-eqz p2, :cond_11

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_11
    if-eqz p3, :cond_17

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_17
    :goto_17
    return-void
.end method

.method public static writeBigIntegerArray(Landroid/os/Parcel;I[Ljava/math/BigInteger;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    array-length p3, p2

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    if-ge v0, p3, :cond_19

    .line 5
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 8
    :cond_19
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_22

    :cond_1d
    if-eqz p3, :cond_22

    .line 10
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_22
    :goto_22
    return-void
.end method

.method public static writeBoolean(Landroid/os/Parcel;IZ)V
    .registers 4

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    if-eqz p2, :cond_b

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    :cond_b
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return-void
.end method

.method public static writeBooleanArray(Landroid/os/Parcel;I[ZZ)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeBooleanList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_24

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_20

    .line 7
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 12
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 15
    :cond_20
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_24
    if-eqz p3, :cond_29

    .line 17
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V
    .registers 4

    if-eqz p2, :cond_e

    const/4 p3, 0x4

    .line 1
    invoke-static {p0, p1, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    :cond_e
    if-eqz p3, :cond_14

    const/4 p2, 0x0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_14
    :goto_14
    return-void
.end method

.method public static writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeByte(Landroid/os/Parcel;IB)V
    .registers 4

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeByteArray(Landroid/os/Parcel;I[BZ)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeByteArrayArray(Landroid/os/Parcel;I[[BZ)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    array-length p3, p2

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    if-ge v0, p3, :cond_15

    .line 5
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 8
    :cond_15
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_1e

    :cond_19
    if-eqz p3, :cond_1e

    .line 10
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static writeByteArraySparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "[B>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_27

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_23

    .line 6
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 10
    :cond_23
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_27
    if-eqz p3, :cond_2c

    .line 12
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static writeChar(Landroid/os/Parcel;IC)V
    .registers 4

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeCharArray(Landroid/os/Parcel;I[CZ)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeDouble(Landroid/os/Parcel;ID)V
    .registers 5

    const/16 v0, 0x8

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public static writeDoubleArray(Landroid/os/Parcel;I[DZ)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeDoubleList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_24

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_20

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 9
    :cond_20
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_24
    if-eqz p3, :cond_29

    .line 11
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static writeDoubleObject(Landroid/os/Parcel;ILjava/lang/Double;Z)V
    .registers 4

    if-eqz p2, :cond_f

    const/16 p3, 0x8

    .line 1
    invoke-static {p0, p1, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_15

    :cond_f
    if-eqz p3, :cond_15

    const/4 p2, 0x0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_15
    :goto_15
    return-void
.end method

.method public static writeDoubleSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2b

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_27

    .line 6
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 10
    :cond_27
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_30

    :cond_2b
    if-eqz p3, :cond_30

    .line 12
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_30
    :goto_30
    return-void
.end method

.method public static writeFloat(Landroid/os/Parcel;IF)V
    .registers 4

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public static writeFloatArray(Landroid/os/Parcel;I[FZ)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeFloatList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_24

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_20

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 9
    :cond_20
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_24
    if-eqz p3, :cond_29

    .line 11
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V
    .registers 4

    if-eqz p2, :cond_e

    const/4 p3, 0x4

    .line 1
    invoke-static {p0, p1, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_14

    :cond_e
    if-eqz p3, :cond_14

    const/4 p2, 0x0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_14
    :goto_14
    return-void
.end method

.method public static writeFloatSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2b

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_27

    .line 6
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 10
    :cond_27
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_30

    :cond_2b
    if-eqz p3, :cond_30

    .line 12
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_30
    :goto_30
    return-void
.end method

.method public static writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeIBinderArray(Landroid/os/Parcel;I[Landroid/os/IBinder;Z)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeIBinderList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeIBinderSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_27

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_23

    .line 6
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 10
    :cond_23
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_27
    if-eqz p3, :cond_2c

    .line 12
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static writeInt(Landroid/os/Parcel;II)V
    .registers 4

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeIntArray(Landroid/os/Parcel;I[IZ)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_24

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_20

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 9
    :cond_20
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_24
    if-eqz p3, :cond_29

    .line 11
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .registers 4

    if-eqz p2, :cond_e

    const/4 p3, 0x4

    .line 1
    invoke-static {p0, p1, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    :cond_e
    if-eqz p3, :cond_14

    const/4 p2, 0x0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_14
    :goto_14
    return-void
.end method

.method public static writeList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeLong(Landroid/os/Parcel;IJ)V
    .registers 5

    const/16 v0, 0x8

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static writeLongArray(Landroid/os/Parcel;I[JZ)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeLongList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_24

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_20

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 9
    :cond_20
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_24
    if-eqz p3, :cond_29

    .line 11
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_29
    :goto_29
    return-void
.end method

.method public static writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V
    .registers 4

    if-eqz p2, :cond_f

    const/16 p3, 0x8

    .line 1
    invoke-static {p0, p1, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_15

    :cond_f
    if-eqz p3, :cond_15

    const/4 p2, 0x0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_15
    :goto_15
    return-void
.end method

.method public static writeParcel(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result p3

    invoke-virtual {p0, p2, v0, p3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_12
    if-eqz p3, :cond_17

    .line 5
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_17
    :goto_17
    return-void
.end method

.method public static writeParcelArray(Landroid/os/Parcel;I[Landroid/os/Parcel;Z)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_31

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    array-length p3, p2

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    :goto_c
    if-ge v1, p3, :cond_2d

    .line 6
    aget-object v2, p2, v1

    if-nez v2, :cond_16

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 9
    :cond_16
    aget-object v2, p2, v1

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    aget-object v2, p2, v1

    aget-object v3, p2, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 14
    :cond_2d
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_36

    :cond_31
    if-eqz p3, :cond_36

    .line 16
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_36
    :goto_36
    return-void
.end method

.method public static writeParcelList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_32

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    :goto_f
    if-ge v1, p3, :cond_2e

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    if-nez v2, :cond_1d

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 10
    :cond_1d
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 15
    :cond_2e
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_37

    :cond_32
    if-eqz p3, :cond_37

    .line 17
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_37
    :goto_37
    return-void
.end method

.method public static writeParcelSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcel;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_39

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    :goto_f
    if-ge v1, p3, :cond_35

    .line 6
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    if-nez v2, :cond_24

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 11
    :cond_24
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 16
    :cond_35
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_3e

    :cond_39
    if-eqz p3, :cond_3e

    .line 18
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public static writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .registers 5

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p4, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeShort(Landroid/os/Parcel;IS)V
    .registers 4

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeSparseBooleanArray(Landroid/os/Parcel;ILandroid/util/SparseBooleanArray;Z)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeSparseIntArray(Landroid/os/Parcel;ILandroid/util/SparseIntArray;Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_21

    .line 5
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 9
    :cond_21
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_2a

    :cond_25
    if-eqz p3, :cond_2a

    .line 11
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static writeSparseLongArray(Landroid/os/Parcel;ILandroid/util/SparseLongArray;Z)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_35

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 3
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p3, v1, :cond_12

    .line 4
    invoke-virtual {p2}, Landroid/util/SparseLongArray;->size()I

    move-result p3

    goto :goto_13

    :cond_12
    move p3, v0

    .line 6
    :goto_13
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_16
    if-ge v0, p3, :cond_31

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_23

    .line 9
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    :cond_23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_2e

    .line 12
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 16
    :cond_31
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_3a

    :cond_35
    if-eqz p3, :cond_3a

    .line 18
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public static writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_d

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_d
    if-eqz p3, :cond_13

    const/4 p2, 0x0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_13
    :goto_13
    return-void
.end method

.method public static writeStringSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_27

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    if-ge v0, p3, :cond_23

    .line 6
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 10
    :cond_23
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_27
    if-eqz p3, :cond_2c

    .line 12
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TP;IZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_22

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    array-length p4, p2

    move v1, v0

    :goto_c
    if-ge v1, p4, :cond_1e

    .line 6
    aget-object v2, p2, v1

    if-eqz v2, :cond_18

    .line 7
    aget-object v2, p2, v1

    invoke-static {p0, v2, p3}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setSizeOfData(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1b

    .line 9
    :cond_18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 13
    :cond_1e
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_27

    :cond_22
    if-eqz p4, :cond_27

    .line 15
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_27
    :goto_27
    return-void
.end method

.method public static writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_27

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    :goto_f
    if-ge v1, p3, :cond_23

    .line 6
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_1d

    .line 8
    invoke-static {p0, v2, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setSizeOfData(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_20

    .line 10
    :cond_1d
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 14
    :cond_23
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_2c

    :cond_27
    if-eqz p3, :cond_2c

    .line 16
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static writeTypedSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2e

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->getStartPosition(Landroid/os/Parcel;I)I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 3
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    :goto_f
    if-ge v1, p3, :cond_2a

    .line 6
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_24

    .line 9
    invoke-static {p0, v2, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setSizeOfData(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_27

    .line 11
    :cond_24
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 15
    :cond_2a
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->handleDataOver(Landroid/os/Parcel;I)V

    goto :goto_33

    :cond_2e
    if-eqz p3, :cond_33

    .line 17
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->setHeader(Landroid/os/Parcel;II)V

    :cond_33
    :goto_33
    return-void
.end method
