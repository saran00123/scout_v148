.class public final Lcom/stripe/android/model/Card$Builder;
.super Ljava/lang/Object;
.source "Card.kt"

# interfaces
.implements Lcom/stripe/android/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ObjectBuilder<",
        "Lcom/stripe/android/model/Card;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Card.kt\ncom/stripe/android/model/Card$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,615:1\n1#2:616\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Use CardParams"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B5\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010+\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010-\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010.\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010/\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0008\u00100\u001a\u00020\u0002H\u0016J\u0014\u00101\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0004J\u0010\u00102\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u001f\u001a\u00020\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00010 J\u0010\u0010!\u001a\u00020\u00002\u0008\u0010!\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010\u0004J\u0014\u0010#\u001a\u00020\u00002\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00040$J\u001c\u0010%\u001a\u00020\u00002\u0014\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010&J\u0010\u0010\'\u001a\u00020\u00002\u0008\u0010\'\u001a\u0004\u0018\u00010\u0004J\u0014\u00103\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010)\u001a\u00020\u00002\u0008\u0010)\u001a\u0004\u0018\u00010*R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001bR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u0018R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/android/model/Card$Builder;",
        "Lcom/stripe/android/ObjectBuilder;",
        "Lcom/stripe/android/model/Card;",
        "number",
        "",
        "expMonth",
        "",
        "expYear",
        "cvc",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V",
        "addressCity",
        "addressCountry",
        "addressLine1",
        "addressLine1Check",
        "addressLine2",
        "addressState",
        "addressZip",
        "addressZipCheck",
        "brand",
        "Lcom/stripe/android/model/CardBrand;",
        "country",
        "currency",
        "customerId",
        "getCvc$stripe_release",
        "()Ljava/lang/String;",
        "cvcCheck",
        "getExpMonth$stripe_release",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getExpYear$stripe_release",
        "fingerprint",
        "funding",
        "Lcom/stripe/android/model/CardFunding;",
        "id",
        "last4",
        "loggingTokens",
        "",
        "metadata",
        "",
        "name",
        "getNumber$stripe_release",
        "tokenizationMethod",
        "Lcom/stripe/android/model/TokenizationMethod;",
        "city",
        "address",
        "state",
        "zip",
        "zipCheck",
        "build",
        "calculateLast4",
        "customer",
        "normalizeCardNumber",
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
.field private addressCity:Ljava/lang/String;

.field private addressCountry:Ljava/lang/String;

.field private addressLine1:Ljava/lang/String;

.field private addressLine1Check:Ljava/lang/String;

.field private addressLine2:Ljava/lang/String;

.field private addressState:Ljava/lang/String;

.field private addressZip:Ljava/lang/String;

.field private addressZipCheck:Ljava/lang/String;

.field private brand:Lcom/stripe/android/model/CardBrand;

.field private country:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private customerId:Ljava/lang/String;

.field private final cvc:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cvcCheck:Ljava/lang/String;

.field private final expMonth:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final expYear:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fingerprint:Ljava/lang/String;

.field private funding:Lcom/stripe/android/model/CardFunding;

.field private id:Ljava/lang/String;

.field private last4:Ljava/lang/String;
    .annotation build Landroidx/annotation/Size;
        value = 0x4L
    .end annotation
.end field

.field private loggingTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private final number:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/model/Card$Builder;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0xcL
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/model/Card$Builder;->number:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/android/model/Card$Builder;->expMonth:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/stripe/android/model/Card$Builder;->expYear:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/stripe/android/model/Card$Builder;->cvc:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_8

    .line 381
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_8
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_f

    .line 382
    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    :cond_f
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_16

    .line 383
    move-object p3, v0

    check-cast p3, Ljava/lang/Integer;

    :cond_16
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1d

    .line 384
    move-object p4, v0

    check-cast p4, Ljava/lang/String;

    :cond_1d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/android/model/Card$Builder;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private final calculateLast4(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_18

    .line 537
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_18

    .line 538
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return-object p1
.end method

.method private final normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_28

    if-eqz p1, :cond_20

    .line 533
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\s+|-"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    const/4 p1, 0x0

    :goto_29
    return-object p1
.end method


# virtual methods
.method public final addressCity(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 427
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 428
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->addressCity:Ljava/lang/String;

    return-object v0
.end method

.method public final addressCountry(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 443
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 444
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->addressCountry:Ljava/lang/String;

    return-object v0
.end method

.method public final addressLine1(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 415
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 416
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->addressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public final addressLine1Check(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 419
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 420
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->addressLine1Check:Ljava/lang/String;

    return-object v0
.end method

.method public final addressLine2(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 423
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 424
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->addressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public final addressState(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 431
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 432
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->addressState:Ljava/lang/String;

    return-object v0
.end method

.method public final addressZip(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 435
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 436
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->addressZip:Ljava/lang/String;

    return-object v0
.end method

.method public final addressZipCheck(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 439
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 440
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->addressZipCheck:Ljava/lang/String;

    return-object v0
.end method

.method public final brand(Lcom/stripe/android/model/CardBrand;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/CardBrand;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 447
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 448
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->brand:Lcom/stripe/android/model/CardBrand;

    return-object v0
.end method

.method public build()Lcom/stripe/android/model/Card;
    .registers 35
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 502
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->number:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/stripe/android/model/Card$Builder;->normalizeCardNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_18

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_18

    :cond_16
    move v2, v3

    goto :goto_19

    :cond_18
    :goto_18
    move v2, v4

    :goto_19
    const/4 v5, 0x0

    if-nez v2, :cond_1e

    move-object v7, v1

    goto :goto_1f

    :cond_1e
    move-object v7, v5

    .line 503
    :goto_1f
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->last4:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2f

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_2f

    :cond_2d
    move v2, v3

    goto :goto_30

    :cond_2f
    :goto_2f
    move v2, v4

    :goto_30
    if-nez v2, :cond_33

    goto :goto_34

    :cond_33
    move-object v1, v5

    :goto_34
    if-eqz v1, :cond_37

    goto :goto_3b

    :cond_37
    invoke-direct {v0, v7}, Lcom/stripe/android/model/Card$Builder;->calculateLast4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3b
    move-object/from16 v20, v1

    .line 506
    iget-object v9, v0, Lcom/stripe/android/model/Card$Builder;->expMonth:Ljava/lang/Integer;

    .line 507
    iget-object v10, v0, Lcom/stripe/android/model/Card$Builder;->expYear:Ljava/lang/Integer;

    .line 508
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->cvc:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_51

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_51

    :cond_4f
    move v2, v3

    goto :goto_52

    :cond_51
    :goto_51
    move v2, v4

    :goto_52
    if-nez v2, :cond_56

    move-object v8, v1

    goto :goto_57

    :cond_56
    move-object v8, v5

    .line 509
    :goto_57
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->name:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_67

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    goto :goto_67

    :cond_65
    move v2, v3

    goto :goto_68

    :cond_67
    :goto_67
    move v2, v4

    :goto_68
    if-nez v2, :cond_6c

    move-object v11, v1

    goto :goto_6d

    :cond_6c
    move-object v11, v5

    .line 510
    :goto_6d
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->addressLine1:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_7d

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7b

    goto :goto_7d

    :cond_7b
    move v2, v3

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v2, v4

    :goto_7e
    if-nez v2, :cond_82

    move-object v12, v1

    goto :goto_83

    :cond_82
    move-object v12, v5

    .line 511
    :goto_83
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->addressLine1Check:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_93

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_91

    goto :goto_93

    :cond_91
    move v2, v3

    goto :goto_94

    :cond_93
    :goto_93
    move v2, v4

    :goto_94
    if-nez v2, :cond_98

    move-object v13, v1

    goto :goto_99

    :cond_98
    move-object v13, v5

    .line 512
    :goto_99
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->addressLine2:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_a9

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a7

    goto :goto_a9

    :cond_a7
    move v2, v3

    goto :goto_aa

    :cond_a9
    :goto_a9
    move v2, v4

    :goto_aa
    if-nez v2, :cond_ae

    move-object v14, v1

    goto :goto_af

    :cond_ae
    move-object v14, v5

    .line 513
    :goto_af
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->addressCity:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_bf

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bd

    goto :goto_bf

    :cond_bd
    move v2, v3

    goto :goto_c0

    :cond_bf
    :goto_bf
    move v2, v4

    :goto_c0
    if-nez v2, :cond_c4

    move-object v15, v1

    goto :goto_c5

    :cond_c4
    move-object v15, v5

    .line 514
    :goto_c5
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->addressState:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_d5

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d3

    goto :goto_d5

    :cond_d3
    move v2, v3

    goto :goto_d6

    :cond_d5
    :goto_d5
    move v2, v4

    :goto_d6
    if-nez v2, :cond_db

    move-object/from16 v16, v1

    goto :goto_dd

    :cond_db
    move-object/from16 v16, v5

    .line 515
    :goto_dd
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->addressZip:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_ed

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_eb

    goto :goto_ed

    :cond_eb
    move v2, v3

    goto :goto_ee

    :cond_ed
    :goto_ed
    move v2, v4

    :goto_ee
    if-nez v2, :cond_f3

    move-object/from16 v17, v1

    goto :goto_f5

    :cond_f3
    move-object/from16 v17, v5

    .line 516
    :goto_f5
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->addressZipCheck:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_105

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_103

    goto :goto_105

    :cond_103
    move v2, v3

    goto :goto_106

    :cond_105
    :goto_105
    move v2, v4

    :goto_106
    if-nez v2, :cond_10b

    move-object/from16 v18, v1

    goto :goto_10d

    :cond_10b
    move-object/from16 v18, v5

    .line 517
    :goto_10d
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->addressCountry:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_11d

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11b

    goto :goto_11d

    :cond_11b
    move v2, v3

    goto :goto_11e

    :cond_11d
    :goto_11d
    move v2, v4

    :goto_11e
    if-nez v2, :cond_123

    move-object/from16 v19, v1

    goto :goto_125

    :cond_123
    move-object/from16 v19, v5

    .line 519
    :goto_125
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->brand:Lcom/stripe/android/model/CardBrand;

    if-eqz v1, :cond_12a

    goto :goto_12e

    :cond_12a
    invoke-static {v7}, Lcom/stripe/android/CardUtils;->getPossibleCardBrand(Ljava/lang/String;)Lcom/stripe/android/model/CardBrand;

    move-result-object v1

    :goto_12e
    move-object/from16 v21, v1

    .line 520
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->fingerprint:Ljava/lang/String;

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_140

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13e

    goto :goto_140

    :cond_13e
    move v2, v3

    goto :goto_141

    :cond_140
    :goto_140
    move v2, v4

    :goto_141
    if-nez v2, :cond_146

    move-object/from16 v23, v1

    goto :goto_148

    :cond_146
    move-object/from16 v23, v5

    .line 521
    :goto_148
    iget-object v1, v0, Lcom/stripe/android/model/Card$Builder;->funding:Lcom/stripe/android/model/CardFunding;

    .line 522
    iget-object v2, v0, Lcom/stripe/android/model/Card$Builder;->country:Ljava/lang/String;

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_15a

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_158

    goto :goto_15a

    :cond_158
    move v6, v3

    goto :goto_15b

    :cond_15a
    :goto_15a
    move v6, v4

    :goto_15b
    if-nez v6, :cond_160

    move-object/from16 v24, v2

    goto :goto_162

    :cond_160
    move-object/from16 v24, v5

    .line 523
    :goto_162
    iget-object v2, v0, Lcom/stripe/android/model/Card$Builder;->currency:Ljava/lang/String;

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_172

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_170

    goto :goto_172

    :cond_170
    move v6, v3

    goto :goto_173

    :cond_172
    :goto_172
    move v6, v4

    :goto_173
    if-nez v6, :cond_178

    move-object/from16 v25, v2

    goto :goto_17a

    :cond_178
    move-object/from16 v25, v5

    .line 524
    :goto_17a
    iget-object v2, v0, Lcom/stripe/android/model/Card$Builder;->customerId:Ljava/lang/String;

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_18a

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_188

    goto :goto_18a

    :cond_188
    move v6, v3

    goto :goto_18b

    :cond_18a
    :goto_18a
    move v6, v4

    :goto_18b
    if-nez v6, :cond_190

    move-object/from16 v26, v2

    goto :goto_192

    :cond_190
    move-object/from16 v26, v5

    .line 525
    :goto_192
    iget-object v2, v0, Lcom/stripe/android/model/Card$Builder;->cvcCheck:Ljava/lang/String;

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_1a2

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1a0

    goto :goto_1a2

    :cond_1a0
    move v6, v3

    goto :goto_1a3

    :cond_1a2
    :goto_1a2
    move v6, v4

    :goto_1a3
    if-nez v6, :cond_1a8

    move-object/from16 v27, v2

    goto :goto_1aa

    :cond_1a8
    move-object/from16 v27, v5

    .line 526
    :goto_1aa
    iget-object v2, v0, Lcom/stripe/android/model/Card$Builder;->id:Ljava/lang/String;

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_1b7

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b8

    :cond_1b7
    move v3, v4

    :cond_1b8
    if-nez v3, :cond_1bd

    move-object/from16 v28, v2

    goto :goto_1bf

    :cond_1bd
    move-object/from16 v28, v5

    .line 527
    :goto_1bf
    iget-object v2, v0, Lcom/stripe/android/model/Card$Builder;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    .line 528
    iget-object v3, v0, Lcom/stripe/android/model/Card$Builder;->loggingTokens:Ljava/util/Set;

    if-eqz v3, :cond_1c6

    goto :goto_1ca

    :cond_1c6
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    :goto_1ca
    move-object/from16 v29, v3

    const/16 v31, 0x0

    const/high16 v32, 0x1000000

    const/16 v33, 0x0

    .line 504
    new-instance v3, Lcom/stripe/android/model/Card;

    move-object v6, v3

    move-object/from16 v22, v1

    move-object/from16 v30, v2

    invoke-direct/range {v6 .. v33}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/model/TokenizationMethod;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 380
    invoke-virtual {p0}, Lcom/stripe/android/model/Card$Builder;->build()Lcom/stripe/android/model/Card;

    move-result-object v0

    return-object v0
.end method

.method public final country(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 460
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 461
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 464
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 465
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final customer(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 468
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 469
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public final cvcCheck(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 472
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 473
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->cvcCheck:Ljava/lang/String;

    return-object v0
.end method

.method public final fingerprint(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 451
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 452
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public final funding(Lcom/stripe/android/model/CardFunding;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/CardFunding;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 456
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 457
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->funding:Lcom/stripe/android/model/CardFunding;

    return-object v0
.end method

.method public final getCvc$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->cvc:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpMonth$stripe_release()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->expMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getExpYear$stripe_release()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->expYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNumber$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/stripe/android/model/Card$Builder;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 480
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 481
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final last4(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 476
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 477
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->last4:Ljava/lang/String;

    return-object v0
.end method

.method public final loggingTokens(Ljava/util/Set;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/android/model/Card$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "loggingTokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 493
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->loggingTokens:Ljava/util/Set;

    return-object v0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/android/model/Card$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 488
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 489
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 411
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 412
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final tokenizationMethod(Lcom/stripe/android/model/TokenizationMethod;)Lcom/stripe/android/model/Card$Builder;
    .registers 3
    .param p1    # Lcom/stripe/android/model/TokenizationMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 484
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Builder;

    .line 485
    iput-object p1, v0, Lcom/stripe/android/model/Card$Builder;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    return-object v0
.end method
