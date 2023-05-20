.class public final Lcom/stripe/android/PaymentConfiguration$Companion;
.super Ljava/lang/Object;
.source "PaymentConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentConfiguration;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0005\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0007J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0007J$\u0010\u000b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/android/PaymentConfiguration$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/stripe/android/PaymentConfiguration;",
        "clearInstance",
        "",
        "clearInstance$stripe_release",
        "getInstance",
        "context",
        "Landroid/content/Context;",
        "init",
        "publishableKey",
        "",
        "stripeAccountId",
        "loadInstance",
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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/stripe/android/PaymentConfiguration$Companion;-><init>()V

    return-void
.end method

.method public static synthetic init$default(Lcom/stripe/android/PaymentConfiguration$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    .line 87
    check-cast p3, Ljava/lang/String;

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/android/PaymentConfiguration$Companion;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final loadInstance(Landroid/content/Context;)Lcom/stripe/android/PaymentConfiguration;
    .registers 3

    .line 70
    new-instance v0, Lcom/stripe/android/PaymentConfiguration$Store;

    invoke-direct {v0, p1}, Lcom/stripe/android/PaymentConfiguration$Store;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/stripe/android/PaymentConfiguration$Store;->load$stripe_release()Lcom/stripe/android/PaymentConfiguration;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 71
    invoke-static {p1}, Lcom/stripe/android/PaymentConfiguration;->access$setInstance$cp(Lcom/stripe/android/PaymentConfiguration;)V

    if-eqz p1, :cond_11

    return-object p1

    .line 74
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "PaymentConfiguration was not initialized. Call PaymentConfiguration.init()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public final synthetic clearInstance$stripe_release()V
    .registers 2

    const/4 v0, 0x0

    .line 104
    check-cast v0, Lcom/stripe/android/PaymentConfiguration;

    invoke-static {v0}, Lcom/stripe/android/PaymentConfiguration;->access$setInstance$cp(Lcom/stripe/android/PaymentConfiguration;)V

    return-void
.end method

.method public final getInstance(Landroid/content/Context;)Lcom/stripe/android/PaymentConfiguration;
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/stripe/android/PaymentConfiguration;->access$getInstance$cp()Lcom/stripe/android/PaymentConfiguration;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_13

    :cond_c
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/PaymentConfiguration$Companion;

    invoke-direct {v0, p1}, Lcom/stripe/android/PaymentConfiguration$Companion;->loadInstance(Landroid/content/Context;)Lcom/stripe/android/PaymentConfiguration;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/stripe/android/PaymentConfiguration$Companion;->init$default(Lcom/stripe/android/PaymentConfiguration$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishableKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/stripe/android/PaymentConfiguration;

    invoke-direct {v0, p2, p3}, Lcom/stripe/android/PaymentConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/stripe/android/PaymentConfiguration;->access$setInstance$cp(Lcom/stripe/android/PaymentConfiguration;)V

    .line 93
    new-instance v0, Lcom/stripe/android/PaymentConfiguration$Store;

    invoke-direct {v0, p1}, Lcom/stripe/android/PaymentConfiguration$Store;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0, p2, p3}, Lcom/stripe/android/PaymentConfiguration$Store;->save$stripe_release(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance p2, Lcom/stripe/android/FingerprintDataRepository$Default;

    invoke-direct {p2, p1}, Lcom/stripe/android/FingerprintDataRepository$Default;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/stripe/android/FingerprintDataRepository$Default;->refresh()V

    return-void
.end method
