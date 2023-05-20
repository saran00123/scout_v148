.class public final Lcom/stripe/android/model/ExpirationDate$Validated;
.super Lcom/stripe/android/model/ExpirationDate;
.source "ExpirationDate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/ExpirationDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Validated"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/android/model/ExpirationDate$Validated;",
        "Lcom/stripe/android/model/ExpirationDate;",
        "month",
        "",
        "year",
        "(II)V",
        "getMonth",
        "()I",
        "getYear",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final month:I

.field private final year:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lcom/stripe/android/model/ExpirationDate;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->month:I

    iput p2, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->year:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/ExpirationDate$Validated;IIILjava/lang/Object;)Lcom/stripe/android/model/ExpirationDate$Validated;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->month:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->year:I

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/model/ExpirationDate$Validated;->copy(II)Lcom/stripe/android/model/ExpirationDate$Validated;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->month:I

    return v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->year:I

    return v0
.end method

.method public final copy(II)Lcom/stripe/android/model/ExpirationDate$Validated;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/stripe/android/model/ExpirationDate$Validated;

    invoke-direct {v0, p1, p2}, Lcom/stripe/android/model/ExpirationDate$Validated;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_17

    instance-of v0, p1, Lcom/stripe/android/model/ExpirationDate$Validated;

    if-eqz v0, :cond_15

    check-cast p1, Lcom/stripe/android/model/ExpirationDate$Validated;

    iget v0, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->month:I

    iget v1, p1, Lcom/stripe/android/model/ExpirationDate$Validated;->month:I

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->year:I

    iget p1, p1, Lcom/stripe/android/model/ExpirationDate$Validated;->year:I

    if-ne v0, p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method public final getMonth()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->month:I

    return v0
.end method

.method public final getYear()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->year:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->month:I

    invoke-static {v0}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->year:I

    invoke-static {v1}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validated(month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stripe/android/model/ExpirationDate$Validated;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
