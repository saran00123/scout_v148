.class public Lcom/huawei/hms/common/size/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/huawei/hms/common/size/Size;->width:I

    .line 3
    iput p2, p0, Lcom/huawei/hms/common/size/Size;->height:I

    return-void
.end method

.method public static parseSize(Ljava/lang/String;)Lcom/huawei/hms/common/size/Size;
    .registers 4

    :try_start_0
    const-string v0, "x"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_e

    const-string v0, "*"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 5
    :cond_e
    new-instance v1, Lcom/huawei/hms/common/size/Size;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v2, p0}, Lcom/huawei/hms/common/size/Size;-><init>(II)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    return-object v1

    .line 7
    :catch_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Size parses failed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 1
    :cond_8
    instance-of v2, p1, Lcom/huawei/hms/common/size/Size;

    if-eqz v2, :cond_1b

    .line 2
    check-cast p1, Lcom/huawei/hms/common/size/Size;

    .line 3
    iget v2, p0, Lcom/huawei/hms/common/size/Size;->width:I

    iget v3, p1, Lcom/huawei/hms/common/size/Size;->width:I

    if-ne v2, v3, :cond_1b

    iget v2, p0, Lcom/huawei/hms/common/size/Size;->height:I

    iget p1, p1, Lcom/huawei/hms/common/size/Size;->height:I

    if-ne v2, p1, :cond_1b

    move v0, v1

    :cond_1b
    return v0
.end method

.method public final getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/size/Size;->height:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/size/Size;->width:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/size/Size;->width:I

    .line 2
    iget v1, p0, Lcom/huawei/hms/common/size/Size;->height:I

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Height is "

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
