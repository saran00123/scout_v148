.class public final Lcom/stripe/android/view/i18n/TranslatorManager;
.super Ljava/lang/Object;
.source "TranslatorManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/i18n/TranslatorManager$Default;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/android/view/i18n/TranslatorManager;",
        "",
        "()V",
        "DEFAULT_ERROR_MESSAGE_TRANSLATOR",
        "Lcom/stripe/android/view/i18n/TranslatorManager$Default;",
        "errorMessageTranslator",
        "Lcom/stripe/android/view/i18n/ErrorMessageTranslator;",
        "getErrorMessageTranslator",
        "setErrorMessageTranslator",
        "",
        "Default",
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
.field private static final DEFAULT_ERROR_MESSAGE_TRANSLATOR:Lcom/stripe/android/view/i18n/TranslatorManager$Default;

.field public static final INSTANCE:Lcom/stripe/android/view/i18n/TranslatorManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static errorMessageTranslator:Lcom/stripe/android/view/i18n/ErrorMessageTranslator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/stripe/android/view/i18n/TranslatorManager;

    invoke-direct {v0}, Lcom/stripe/android/view/i18n/TranslatorManager;-><init>()V

    sput-object v0, Lcom/stripe/android/view/i18n/TranslatorManager;->INSTANCE:Lcom/stripe/android/view/i18n/TranslatorManager;

    .line 26
    new-instance v0, Lcom/stripe/android/view/i18n/TranslatorManager$Default;

    invoke-direct {v0}, Lcom/stripe/android/view/i18n/TranslatorManager$Default;-><init>()V

    sput-object v0, Lcom/stripe/android/view/i18n/TranslatorManager;->DEFAULT_ERROR_MESSAGE_TRANSLATOR:Lcom/stripe/android/view/i18n/TranslatorManager$Default;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getErrorMessageTranslator()Lcom/stripe/android/view/i18n/ErrorMessageTranslator;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    sget-object v0, Lcom/stripe/android/view/i18n/TranslatorManager;->errorMessageTranslator:Lcom/stripe/android/view/i18n/ErrorMessageTranslator;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    sget-object v0, Lcom/stripe/android/view/i18n/TranslatorManager;->DEFAULT_ERROR_MESSAGE_TRANSLATOR:Lcom/stripe/android/view/i18n/TranslatorManager$Default;

    check-cast v0, Lcom/stripe/android/view/i18n/ErrorMessageTranslator;

    :goto_9
    return-object v0
.end method

.method public final setErrorMessageTranslator(Lcom/stripe/android/view/i18n/ErrorMessageTranslator;)V
    .registers 2
    .param p1    # Lcom/stripe/android/view/i18n/ErrorMessageTranslator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 35
    sput-object p1, Lcom/stripe/android/view/i18n/TranslatorManager;->errorMessageTranslator:Lcom/stripe/android/view/i18n/ErrorMessageTranslator;

    return-void
.end method
