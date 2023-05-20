.class public final Lcom/stripe/android/cards/CardNumber$Unvalidated;
.super Lcom/stripe/android/cards/CardNumber;
.source "CardNumber.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/cards/CardNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unvalidated"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/cards/CardNumber$Unvalidated$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardNumber.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardNumber.kt\ncom/stripe/android/cards/CardNumber$Unvalidated\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,111:1\n1828#2,3:112\n1590#3,6:115\n5224#3,7:121\n452#4,11:128\n*E\n*S KotlinDebug\n*F\n+ 1 CardNumber.kt\ncom/stripe/android/cards/CardNumber$Unvalidated\n*L\n56#1,3:112\n69#1,6:115\n77#1,7:121\n13#1,11:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u0000  2\u00020\u0001:\u0001 B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0014\u001a\u00020\u0003H\u00c2\u0003J\u0013\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\n2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u000eH\u0002J\u0010\u0010\u001b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000eJ\t\u0010\u001c\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u001a\u001a\u00020\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/android/cards/CardNumber$Unvalidated;",
        "Lcom/stripe/android/cards/CardNumber;",
        "denormalized",
        "",
        "(Ljava/lang/String;)V",
        "bin",
        "Lcom/stripe/android/cards/Bin;",
        "getBin",
        "()Lcom/stripe/android/cards/Bin;",
        "isMaxLength",
        "",
        "()Z",
        "isValidLuhn",
        "length",
        "",
        "getLength",
        "()I",
        "normalized",
        "getNormalized",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "other",
        "",
        "formatNumber",
        "panLength",
        "getFormatted",
        "hashCode",
        "toString",
        "validate",
        "Lcom/stripe/android/cards/CardNumber$Validated;",
        "Companion",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final Companion:Lcom/stripe/android/cards/CardNumber$Unvalidated$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REJECT_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bin:Lcom/stripe/android/cards/Bin;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final denormalized:Ljava/lang/String;

.field private final isMaxLength:Z

.field private final isValidLuhn:Z

.field private final length:I

.field private final normalized:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/stripe/android/cards/CardNumber$Unvalidated$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/cards/CardNumber$Unvalidated$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->Companion:Lcom/stripe/android/cards/CardNumber$Unvalidated$Companion;

    const/4 v0, 0x2

    .line 83
    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->REJECT_CHARS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "denormalized"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/stripe/android/cards/CardNumber;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->denormalized:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->denormalized:Ljava/lang/String;

    .line 128
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Appendable;

    const/4 v1, 0x0

    move v2, v1

    .line 137
    :goto_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_34

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 13
    sget-object v4, Lcom/stripe/android/cards/CardNumber$Unvalidated;->REJECT_CHARS:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 138
    :cond_34
    check-cast v0, Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "filterNotTo(StringBuilder(), predicate).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->normalized:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->normalized:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->length:I

    .line 17
    iget p1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->length:I

    const/16 v0, 0x13

    if-ne p1, v0, :cond_50

    const/4 v1, 0x1

    :cond_50
    iput-boolean v1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->isMaxLength:Z

    .line 19
    sget-object p1, Lcom/stripe/android/cards/Bin;->Companion:Lcom/stripe/android/cards/Bin$Companion;

    iget-object v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->normalized:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/stripe/android/cards/Bin$Companion;->create(Ljava/lang/String;)Lcom/stripe/android/cards/Bin;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->bin:Lcom/stripe/android/cards/Bin;

    .line 21
    sget-object p1, Lcom/stripe/android/CardUtils;->INSTANCE:Lcom/stripe/android/CardUtils;

    iget-object v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->normalized:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/stripe/android/CardUtils;->isValidLuhnNumber$stripe_release(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->isValidLuhn:Z

    return-void
.end method

.method private final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->denormalized:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/android/cards/CardNumber$Unvalidated;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/cards/CardNumber$Unvalidated;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->denormalized:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->copy(Ljava/lang/String;)Lcom/stripe/android/cards/CardNumber$Unvalidated;

    move-result-object p0

    return-object p0
.end method

.method private final formatNumber(I)Ljava/lang/String;
    .registers 12

    .line 48
    sget-object v0, Lcom/stripe/android/cards/CardNumber;->Companion:Lcom/stripe/android/cards/CardNumber$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/android/cards/CardNumber$Companion;->getSpacePositions$stripe_release(I)Ljava/util/Set;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->normalized:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 55
    check-cast v0, Ljava/lang/Iterable;

    .line 56
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 113
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    if-eqz v7, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v9, v5, 0x1

    if-gez v5, :cond_40

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_40
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    sub-int/2addr v7, v5

    if-le v3, v7, :cond_5e

    if-eqz p1, :cond_58

    .line 59
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v1, v5

    move v6, v7

    goto :goto_5e

    :cond_58
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    :goto_5e
    move v5, v9

    goto :goto_2d

    .line 115
    :cond_60
    array-length v0, v1

    move v3, v4

    :goto_62
    const/4 v5, -0x1

    if-ge v3, v0, :cond_72

    .line 116
    aget-object v7, v1, v3

    if-nez v7, :cond_6b

    move v7, v2

    goto :goto_6c

    :cond_6b
    move v7, v4

    :goto_6c
    if-eqz v7, :cond_6f

    goto :goto_73

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_72
    move v3, v5

    .line 120
    :goto_73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_82

    move v3, v2

    goto :goto_83

    :cond_82
    move v3, v4

    :goto_83
    if-eqz v3, :cond_86

    goto :goto_87

    :cond_86
    const/4 v0, 0x0

    :goto_87
    if-eqz v0, :cond_a3

    .line 72
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz p1, :cond_9d

    .line 73
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v1, v0

    goto :goto_a3

    :cond_9d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_a3
    :goto_a3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    array-length v0, v1

    move v3, v4

    :goto_aa
    if-ge v3, v0, :cond_bc

    aget-object v5, v1, v3

    if-eqz v5, :cond_b2

    move v6, v2

    goto :goto_b3

    :cond_b2
    move v6, v4

    :goto_b3
    if-nez v6, :cond_b6

    goto :goto_bc

    .line 125
    :cond_b6
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_aa

    .line 127
    :cond_bc
    :goto_bc
    check-cast p1, Ljava/util/List;

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, " "

    .line 78
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic getFormatted$default(Lcom/stripe/android/cards/CardNumber$Unvalidated;IILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/16 p1, 0x10

    .line 44
    :cond_6
    invoke-virtual {p0, p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->getFormatted(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;)Lcom/stripe/android/cards/CardNumber$Unvalidated;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "denormalized"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    invoke-direct {v0, p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/stripe/android/cards/CardNumber$Unvalidated;

    iget-object v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->denormalized:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/android/cards/CardNumber$Unvalidated;->denormalized:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public final getBin()Lcom/stripe/android/cards/Bin;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->bin:Lcom/stripe/android/cards/Bin;

    return-object v0
.end method

.method public final getFormatted(I)Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/stripe/android/cards/CardNumber$Unvalidated;->formatNumber(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLength()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->length:I

    return v0
.end method

.method public final getNormalized()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->normalized:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->denormalized:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final isMaxLength()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->isMaxLength:Z

    return v0
.end method

.method public final isValidLuhn()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->isValidLuhn:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unvalidated(denormalized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->denormalized:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final validate(I)Lcom/stripe/android/cards/CardNumber$Validated;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/16 v0, 0xe

    if-lt p1, v0, :cond_18

    .line 26
    iget-object v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->normalized:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_18

    iget-boolean p1, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->isValidLuhn:Z

    if-eqz p1, :cond_18

    .line 28
    new-instance p1, Lcom/stripe/android/cards/CardNumber$Validated;

    .line 29
    iget-object v0, p0, Lcom/stripe/android/cards/CardNumber$Unvalidated;->normalized:Ljava/lang/String;

    .line 28
    invoke-direct {p1, v0}, Lcom/stripe/android/cards/CardNumber$Validated;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return-object p1
.end method
