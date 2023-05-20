.class public final Lcom/stripe/android/model/Card$Companion;
.super Ljava/lang/Object;
.source "Card.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006H\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u0006H\u0007J\u0017\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/android/model/Card$Companion;",
        "",
        "()V",
        "create",
        "Lcom/stripe/android/model/Card;",
        "number",
        "",
        "expMonth",
        "",
        "expYear",
        "cvc",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/stripe/android/model/Card;",
        "fromJson",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "fromString",
        "jsonString",
        "getCardBrand",
        "Lcom/stripe/android/model/CardBrand;",
        "brandName",
        "getCardBrand$stripe_release",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 545
    invoke-direct {p0}, Lcom/stripe/android/model/Card$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/stripe/android/model/Card$Companion;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/model/Card;
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_8

    .line 588
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_8
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_f

    .line 589
    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    :cond_f
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_16

    .line 590
    move-object p3, v0

    check-cast p3, Ljava/lang/Integer;

    :cond_16
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1d

    .line 591
    move-object p4, v0

    check-cast p4, Ljava/lang/String;

    :cond_1d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/android/model/Card$Companion;->create(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/stripe/android/model/Card;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/stripe/android/model/Card;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Use CardParams"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Builder(number, expMonth, expYear, cvc).build()"
            imports = {
                "com.stripe.android.model.Card.Builder"
            }
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 593
    new-instance v0, Lcom/stripe/android/model/Card$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/android/model/Card$Builder;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0}, Lcom/stripe/android/model/Card$Builder;->build()Lcom/stripe/android/model/Card;

    move-result-object p1

    return-object p1
.end method

.method public final fromJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Will be removed in next major release."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_c

    .line 567
    new-instance v0, Lcom/stripe/android/model/parsers/CardJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/CardJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/CardJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;

    move-result-object p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return-object p1
.end method

.method public final fromString(Ljava/lang/String;)Lcom/stripe/android/model/Card;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Will be removed in next major release."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/android/model/Card$Companion;

    .line 557
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_1f

    :catch_14
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 558
    :goto_1f
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    move-object p1, v1

    :cond_27
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_31

    .line 559
    sget-object v0, Lcom/stripe/android/model/Card;->Companion:Lcom/stripe/android/model/Card$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/Card$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;

    move-result-object v1

    :cond_31
    return-object v1
.end method

.method public final synthetic getCardBrand$stripe_release(Ljava/lang/String;)Lcom/stripe/android/model/CardBrand;
    .registers 3

    if-nez p1, :cond_3

    goto :goto_58

    .line 602
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5c

    goto :goto_58

    :sswitch_b
    const-string v0, "Discover"

    .line 605
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    sget-object p1, Lcom/stripe/android/model/CardBrand;->Discover:Lcom/stripe/android/model/CardBrand;

    goto :goto_5a

    :sswitch_16
    const-string v0, "Visa"

    .line 609
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    sget-object p1, Lcom/stripe/android/model/CardBrand;->Visa:Lcom/stripe/android/model/CardBrand;

    goto :goto_5a

    :sswitch_21
    const-string v0, "JCB"

    .line 606
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    sget-object p1, Lcom/stripe/android/model/CardBrand;->JCB:Lcom/stripe/android/model/CardBrand;

    goto :goto_5a

    :sswitch_2c
    const-string v0, "MasterCard"

    .line 607
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    sget-object p1, Lcom/stripe/android/model/CardBrand;->MasterCard:Lcom/stripe/android/model/CardBrand;

    goto :goto_5a

    :sswitch_37
    const-string v0, "UnionPay"

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    sget-object p1, Lcom/stripe/android/model/CardBrand;->UnionPay:Lcom/stripe/android/model/CardBrand;

    goto :goto_5a

    :sswitch_42
    const-string v0, "American Express"

    .line 603
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    sget-object p1, Lcom/stripe/android/model/CardBrand;->AmericanExpress:Lcom/stripe/android/model/CardBrand;

    goto :goto_5a

    :sswitch_4d
    const-string v0, "Diners Club"

    .line 604
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    sget-object p1, Lcom/stripe/android/model/CardBrand;->DinersClub:Lcom/stripe/android/model/CardBrand;

    goto :goto_5a

    .line 610
    :cond_58
    :goto_58
    sget-object p1, Lcom/stripe/android/model/CardBrand;->Unknown:Lcom/stripe/android/model/CardBrand;

    :goto_5a
    return-object p1

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x3b3bfd47 -> :sswitch_4d
        -0x11ceb490 -> :sswitch_42
        -0xdd26087 -> :sswitch_37
        -0x2c10b4e -> :sswitch_2c
        0x11e29 -> :sswitch_21
        0x28b061 -> :sswitch_16
        0x1422dc09 -> :sswitch_b
    .end sparse-switch
.end method
