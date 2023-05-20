.class public final Lcom/stripe/android/view/BecsDebitBsbEditText;
.super Lcom/stripe/android/view/StripeEditText;
.source "BecsDebitBsbEditText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/BecsDebitBsbEditText$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBecsDebitBsbEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BecsDebitBsbEditText.kt\ncom/stripe/android/view/BecsDebitBsbEditText\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n398#2:147\n471#2,5:148\n1#3:153\n*E\n*S KotlinDebug\n*F\n+ 1 BecsDebitBsbEditText.kt\ncom/stripe/android/view/BecsDebitBsbEditText\n*L\n38#1:147\n38#1,5:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u0000 &2\u00020\u0001:\u0001&B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010#\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010$\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u0014H\u0002R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R(\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00180\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/android/view/BecsDebitBsbEditText;",
        "Lcom/stripe/android/view/StripeEditText;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "bank",
        "Lcom/stripe/android/view/BecsDebitBanks$Bank;",
        "getBank",
        "()Lcom/stripe/android/view/BecsDebitBanks$Bank;",
        "banks",
        "Lcom/stripe/android/view/BecsDebitBanks;",
        "bsb",
        "",
        "getBsb$stripe_release",
        "()Ljava/lang/String;",
        "isComplete",
        "",
        "()Z",
        "onBankChangedCallback",
        "Lkotlin/Function1;",
        "",
        "getOnBankChangedCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnBankChangedCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCompletedCallback",
        "Lkotlin/Function0;",
        "getOnCompletedCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnCompletedCallback",
        "(Lkotlin/jvm/functions/Function0;)V",
        "formatBsb",
        "updateIcon",
        "isError",
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
.field private static final Companion:Lcom/stripe/android/view/BecsDebitBsbEditText$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_LENGTH:I = 0x7

.field private static final MIN_VALIDATION_THRESHOLD:I = 0x2

.field private static final SEPARATOR:Ljava/lang/String; = "-"


# instance fields
.field private final banks:Lcom/stripe/android/view/BecsDebitBanks;

.field private onBankChangedCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/view/BecsDebitBanks$Bank;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private onCompletedCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/view/BecsDebitBsbEditText$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/view/BecsDebitBsbEditText$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/view/BecsDebitBsbEditText;->Companion:Lcom/stripe/android/view/BecsDebitBsbEditText$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/BecsDebitBsbEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/BecsDebitBsbEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 14
    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/view/StripeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    new-instance p2, Lcom/stripe/android/view/BecsDebitBanks;

    const/4 p3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, p3, v1}, Lcom/stripe/android/view/BecsDebitBanks;-><init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/stripe/android/view/BecsDebitBsbEditText;->banks:Lcom/stripe/android/view/BecsDebitBanks;

    .line 18
    sget-object p1, Lcom/stripe/android/view/BecsDebitBsbEditText$onBankChangedCallback$1;->INSTANCE:Lcom/stripe/android/view/BecsDebitBsbEditText$onBankChangedCallback$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText;->onBankChangedCallback:Lkotlin/jvm/functions/Function1;

    .line 19
    sget-object p1, Lcom/stripe/android/view/BecsDebitBsbEditText$onCompletedCallback$1;->INSTANCE:Lcom/stripe/android/view/BecsDebitBsbEditText$onCompletedCallback$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText;->onCompletedCallback:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    .line 52
    new-array p1, p1, [Landroid/text/InputFilter$LengthFilter;

    new-instance p2, Landroid/text/InputFilter$LengthFilter;

    const/4 v1, 0x7

    invoke-direct {p2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object p2, p1, v0

    check-cast p1, [Landroid/text/InputFilter;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 53
    invoke-virtual {p0, p3}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setInputType(I)V

    .line 56
    new-instance p1, Lcom/stripe/android/view/BecsDebitBsbEditText$1;

    invoke-direct {p1, p0}, Lcom/stripe/android/view/BecsDebitBsbEditText$1;-><init>(Lcom/stripe/android/view/BecsDebitBsbEditText;)V

    check-cast p1, Landroid/text/TextWatcher;

    .line 55
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/BecsDebitBsbEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 12
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    .line 13
    sget p3, Landroidx/appcompat/R$attr;->editTextStyle:I

    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/BecsDebitBsbEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$Companion()Lcom/stripe/android/view/BecsDebitBsbEditText$Companion;
    .registers 1

    sget-object v0, Lcom/stripe/android/view/BecsDebitBsbEditText;->Companion:Lcom/stripe/android/view/BecsDebitBsbEditText$Companion;

    return-object v0
.end method

.method public static final synthetic access$formatBsb(Lcom/stripe/android/view/BecsDebitBsbEditText;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lcom/stripe/android/view/BecsDebitBsbEditText;->formatBsb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBank$p(Lcom/stripe/android/view/BecsDebitBsbEditText;)Lcom/stripe/android/view/BecsDebitBanks$Bank;
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getBank()Lcom/stripe/android/view/BecsDebitBanks$Bank;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isComplete$p(Lcom/stripe/android/view/BecsDebitBsbEditText;)Z
    .registers 1

    .line 10
    invoke-direct {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->isComplete()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateIcon(Lcom/stripe/android/view/BecsDebitBsbEditText;Z)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lcom/stripe/android/view/BecsDebitBsbEditText;->updateIcon(Z)V

    return-void
.end method

.method private final formatBsb(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_35

    const/4 v0, 0x2

    .line 131
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 132
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-static {p1, v3}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 131
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, "-"

    .line 134
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

    :cond_35
    return-object p1
.end method

.method private final getBank()Lcom/stripe/android/view/BecsDebitBanks$Bank;
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/stripe/android/view/BecsDebitBsbEditText;->banks:Lcom/stripe/android/view/BecsDebitBanks;

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/BecsDebitBanks;->byPrefix(Ljava/lang/String;)Lcom/stripe/android/view/BecsDebitBanks$Bank;

    move-result-object v0

    return-object v0
.end method

.method private final isComplete()Z
    .registers 3

    .line 43
    invoke-direct {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getBank()Lcom/stripe/android/view/BecsDebitBanks$Bank;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private final updateIcon(Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 114
    sget p1, Lcom/stripe/android/R$drawable;->stripe_ic_bank_error:I

    goto :goto_7

    .line 116
    :cond_5
    sget p1, Lcom/stripe/android/R$drawable;->stripe_ic_bank:I

    :goto_7
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method


# virtual methods
.method public final getBsb$stripe_release()Ljava/lang/String;
    .registers 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_17

    .line 25
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/stripe/android/R$string;->becs_widget_bsb_incomplete:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 27
    :cond_17
    invoke-direct {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getBank()Lcom/stripe/android/view/BecsDebitBanks$Bank;

    move-result-object v0

    if-nez v0, :cond_28

    .line 28
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/stripe/android/R$string;->becs_widget_bsb_invalid:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 30
    :cond_28
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_3e

    .line 31
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/stripe/android/R$string;->becs_widget_bsb_incomplete:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_3e
    move-object v0, v1

    .line 23
    :goto_3f
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->setErrorMessage$stripe_release(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->getFieldText$stripe_release()Ljava/lang/String;

    move-result-object v0

    .line 147
    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/Appendable;

    const/4 v3, 0x0

    .line 148
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_54
    if-ge v3, v4, :cond_66

    .line 149
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 38
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface {v2, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 152
    :cond_66
    check-cast v2, Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "filterTo(StringBuilder(), predicate).toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/stripe/android/view/BecsDebitBsbEditText;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_79

    :cond_78
    move-object v0, v1

    :goto_79
    return-object v0
.end method

.method public final getOnBankChangedCallback()Lkotlin/jvm/functions/Function1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/android/view/BecsDebitBanks$Bank;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/stripe/android/view/BecsDebitBsbEditText;->onBankChangedCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnCompletedCallback()Lkotlin/jvm/functions/Function0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/stripe/android/view/BecsDebitBsbEditText;->onCompletedCallback:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final setOnBankChangedCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/view/BecsDebitBanks$Bank;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText;->onBankChangedCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnCompletedCallback(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/stripe/android/view/BecsDebitBsbEditText;->onCompletedCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method
