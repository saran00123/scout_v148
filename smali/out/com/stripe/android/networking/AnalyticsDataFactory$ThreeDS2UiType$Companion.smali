.class public final Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType$Companion;
.super Ljava/lang/Object;
.source "AnalyticsDataFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsDataFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsDataFactory.kt\ncom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,435:1\n1245#2,2:436\n*E\n*S KotlinDebug\n*F\n+ 1 AnalyticsDataFactory.kt\ncom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType$Companion\n*L\n386#1,2:436\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType$Companion;",
        "",
        "()V",
        "fromUiTypeCode",
        "Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType;",
        "uiTypeCode",
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 385
    invoke-direct {p0}, Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromUiTypeCode(Ljava/lang/String;)Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType;
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 386
    invoke-static {}, Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType;->values()[Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType;

    move-result-object v0

    .line 436
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 387
    invoke-static {v3}, Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType;->access$getCode$p(Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_19

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 v3, 0x0

    :goto_19
    if-eqz v3, :cond_1c

    goto :goto_1e

    .line 388
    :cond_1c
    sget-object v3, Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType;->None:Lcom/stripe/android/networking/AnalyticsDataFactory$ThreeDS2UiType;

    :goto_1e
    return-object v3
.end method
