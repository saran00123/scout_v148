.class public final Lcom/stripe/android/model/Source$Companion;
.super Ljava/lang/Object;
.source "Source.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/Source;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0007J\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/android/model/Source$Companion;",
        "",
        "()V",
        "EURO",
        "",
        "USD",
        "asSourceType",
        "sourceType",
        "fromJson",
        "Lcom/stripe/android/model/Source;",
        "jsonObject",
        "Lorg/json/JSONObject;",
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

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 418
    invoke-direct {p0}, Lcom/stripe/android/model/Source$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final asSourceType(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sepa_debit"

    const-string v1, "multibanco"

    const-string v2, "ideal"

    const-string v3, "giropay"

    const-string v4, "card"

    const-string v5, "p24"

    const-string v6, "eps"

    const-string v7, "wechat"

    const-string v8, "three_d_secure"

    const-string v9, "sofort"

    const-string v10, "alipay"

    const-string v11, "bancontact"

    const-string v12, "unknown"

    if-nez p1, :cond_1e

    goto/16 :goto_8d

    .line 432
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_8e

    goto/16 :goto_8d

    .line 436
    :sswitch_27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v0

    goto/16 :goto_8d

    .line 443
    :sswitch_30
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v1

    goto/16 :goto_8d

    .line 437
    :sswitch_39
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v2

    goto :goto_8d

    .line 435
    :sswitch_41
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v3

    goto :goto_8d

    .line 433
    :sswitch_49
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v4

    goto :goto_8d

    .line 442
    :sswitch_51
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v5

    goto :goto_8d

    .line 441
    :sswitch_59
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v6

    goto :goto_8d

    .line 445
    :sswitch_61
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_8d

    .line 444
    :sswitch_66
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v7

    goto :goto_8d

    .line 434
    :sswitch_6e
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v8

    goto :goto_8d

    .line 438
    :sswitch_76
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v9

    goto :goto_8d

    .line 440
    :sswitch_7e
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v10

    goto :goto_8d

    .line 439
    :sswitch_86
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    move-object v12, v11

    :cond_8d
    :goto_8d
    return-object v12

    :sswitch_data_8e
    .sparse-switch
        -0x727c36cf -> :sswitch_86
        -0x545695b6 -> :sswitch_7e
        -0x357672d9 -> :sswitch_76
        -0x313022cd -> :sswitch_6e
        -0x2f3174da -> :sswitch_66
        -0x10fa53b6 -> :sswitch_61
        0x18928 -> :sswitch_59
        0x1aab2 -> :sswitch_51
        0x2e7b10 -> :sswitch_49
        0x2494da9 -> :sswitch_41
        0x5f6a055 -> :sswitch_39
        0x4a9d4722 -> :sswitch_30
        0x618aa970 -> :sswitch_27
    .end sparse-switch
.end method

.method public final fromJson(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;
    .registers 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_c

    .line 425
    new-instance v0, Lcom/stripe/android/model/parsers/SourceJsonParser;

    invoke-direct {v0}, Lcom/stripe/android/model/parsers/SourceJsonParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/stripe/android/model/parsers/SourceJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/model/Source;

    move-result-object p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return-object p1
.end method
