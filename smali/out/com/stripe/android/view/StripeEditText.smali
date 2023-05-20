.class public Lcom/stripe/android/view/StripeEditText;
.super Lcom/google/android/material/textfield/TextInputEditText;
.source "StripeEditText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;,
        Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;,
        Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;,
        Lcom/stripe/android/view/StripeEditText$SoftDeleteInputConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStripeEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StripeEditText.kt\ncom/stripe/android/view/StripeEditText\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,261:1\n1#2:262\n58#3:263\n71#3,10:264\n93#3,3:274\n*E\n*S KotlinDebug\n*F\n+ 1 StripeEditText.kt\ncom/stripe/android/view/StripeEditText\n*L\n215#1:263\n215#1,10:264\n215#1,3:274\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001:\u0004NOPQB/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u00102\u001a\u000203H\u0002J\u0018\u00104\u001a\u00020\'2\u0006\u00105\u001a\u00020\u00072\u0006\u00106\u001a\u000207H\u0002J\u0008\u00108\u001a\u000203H\u0002J\u0008\u00109\u001a\u000203H\u0002J\u0012\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010<\u001a\u00020=H\u0016J\u0008\u0010>\u001a\u000203H\u0014J\u0010\u0010?\u001a\u0002032\u0006\u0010@\u001a\u00020AH\u0016J\u0010\u0010B\u001a\u0002032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0010\u0010C\u001a\u0002032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010D\u001a\u0002032\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u0007J\u0010\u0010E\u001a\u0002032\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010F\u001a\u0002032\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0016\u0010G\u001a\u0002032\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KJ\u0018\u0010G\u001a\u0002032\u0008\u0008\u0001\u0010L\u001a\u00020\u00072\u0006\u0010J\u001a\u00020KJ\u0010\u0010M\u001a\u0002032\u0006\u0010H\u001a\u00020IH\u0002R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00078G\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000e\"\u0004\u0008 \u0010!R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020\u000c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u000eR\u001a\u0010&\u001a\u00020\'X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010(\"\u0004\u0008)\u0010*R\u0014\u0010+\u001a\u00020,X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R$\u0010/\u001a\u00020\'2\u0006\u0010/\u001a\u00020\'@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010(\"\u0004\u00081\u0010*R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006R"
    }
    d2 = {
        "Lcom/stripe/android/view/StripeEditText;",
        "Lcom/google/android/material/textfield/TextInputEditText;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "workContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/coroutines/CoroutineContext;)V",
        "accessibilityText",
        "",
        "getAccessibilityText",
        "()Ljava/lang/String;",
        "afterTextChangedListener",
        "Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;",
        "<set-?>",
        "Landroid/content/res/ColorStateList;",
        "cachedColorStateList",
        "getCachedColorStateList",
        "()Landroid/content/res/ColorStateList;",
        "defaultErrorColor",
        "defaultErrorColorInt",
        "getDefaultErrorColorInt",
        "()I",
        "deleteEmptyListener",
        "Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;",
        "errorColor",
        "Ljava/lang/Integer;",
        "errorMessage",
        "getErrorMessage$stripe_release",
        "setErrorMessage$stripe_release",
        "(Ljava/lang/String;)V",
        "errorMessageListener",
        "Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;",
        "fieldText",
        "getFieldText$stripe_release",
        "isLastKeyDelete",
        "",
        "()Z",
        "setLastKeyDelete",
        "(Z)V",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "getJob$stripe_release",
        "()Lkotlinx/coroutines/CompletableJob;",
        "shouldShowError",
        "getShouldShowError",
        "setShouldShowError",
        "determineDefaultErrorColor",
        "",
        "isDeleteKey",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "listenForDeleteEmpty",
        "listenForTextChanges",
        "onCreateInputConnection",
        "Landroid/view/inputmethod/InputConnection;",
        "outAttrs",
        "Landroid/view/inputmethod/EditorInfo;",
        "onDetachedFromWindow",
        "onInitializeAccessibilityNodeInfo",
        "info",
        "Landroid/view/accessibility/AccessibilityNodeInfo;",
        "setAfterTextChangedListener",
        "setDeleteEmptyListener",
        "setErrorColor",
        "setErrorMessage",
        "setErrorMessageListener",
        "setHintDelayed",
        "hint",
        "",
        "delayMilliseconds",
        "",
        "hintResource",
        "setHintSafely",
        "AfterTextChangedListener",
        "DeleteEmptyListener",
        "ErrorMessageListener",
        "SoftDeleteInputConnection",
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
.field private final accessibilityText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private afterTextChangedListener:Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;

.field private cachedColorStateList:Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private defaultErrorColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private deleteEmptyListener:Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

.field private errorColor:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private errorMessage:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorMessageListener:Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

.field private isLastKeyDelete:Z

.field private final job:Lkotlinx/coroutines/CompletableJob;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldShowError:Z

.field private final workContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/view/StripeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
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

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/view/StripeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
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

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/stripe/android/view/StripeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/coroutines/CoroutineContext;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, Lcom/stripe/android/view/StripeEditText;->workContext:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 38
    invoke-static {p2, p1, p2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/android/view/StripeEditText;->job:Lkotlinx/coroutines/CompletableJob;

    .line 100
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/StripeEditText;->setMaxLines(I)V

    .line 101
    invoke-direct {p0}, Lcom/stripe/android/view/StripeEditText;->listenForTextChanges()V

    .line 102
    invoke-direct {p0}, Lcom/stripe/android/view/StripeEditText;->listenForDeleteEmpty()V

    .line 103
    invoke-direct {p0}, Lcom/stripe/android/view/StripeEditText;->determineDefaultErrorColor()V

    .line 104
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/StripeEditText;->cachedColorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_7

    const/4 p2, 0x0

    .line 34
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_d

    .line 35
    sget p3, Landroidx/appcompat/R$attr;->editTextStyle:I

    :cond_d
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_17

    .line 36
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    :cond_17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/android/view/StripeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic access$getAfterTextChangedListener$p(Lcom/stripe/android/view/StripeEditText;)Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/stripe/android/view/StripeEditText;->afterTextChangedListener:Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getDeleteEmptyListener$p(Lcom/stripe/android/view/StripeEditText;)Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/stripe/android/view/StripeEditText;->deleteEmptyListener:Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    return-object p0
.end method

.method public static final synthetic access$isDeleteKey(Lcom/stripe/android/view/StripeEditText;ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/view/StripeEditText;->isDeleteKey(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setAfterTextChangedListener$p(Lcom/stripe/android/view/StripeEditText;Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/stripe/android/view/StripeEditText;->afterTextChangedListener:Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;

    return-void
.end method

.method public static final synthetic access$setDeleteEmptyListener$p(Lcom/stripe/android/view/StripeEditText;Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/stripe/android/view/StripeEditText;->deleteEmptyListener:Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    return-void
.end method

.method public static final synthetic access$setHintSafely(Lcom/stripe/android/view/StripeEditText;Ljava/lang/CharSequence;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/stripe/android/view/StripeEditText;->setHintSafely(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final determineDefaultErrorColor()V
    .registers 5

    .line 201
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/view/StripeEditText;->cachedColorStateList:Landroid/content/res/ColorStateList;

    .line 203
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 204
    sget-object v1, Lcom/stripe/android/view/StripeColorUtils;->Companion:Lcom/stripe/android/view/StripeColorUtils$Companion;

    invoke-virtual {p0}, Lcom/stripe/android/view/StripeEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const-string v3, "textColors"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/stripe/android/view/StripeColorUtils$Companion;->isColorDark(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 207
    sget v1, Lcom/stripe/android/R$color;->stripe_error_text_light_theme:I

    goto :goto_24

    .line 209
    :cond_22
    sget v1, Lcom/stripe/android/R$color;->stripe_error_text_dark_theme:I

    .line 202
    :goto_24
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/stripe/android/view/StripeEditText;->defaultErrorColor:I

    return-void
.end method

.method private final isDeleteKey(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x43

    if-ne p1, v0, :cond_c

    .line 232
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private final listenForDeleteEmpty()V
    .registers 2

    .line 222
    new-instance v0, Lcom/stripe/android/view/StripeEditText$listenForDeleteEmpty$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/view/StripeEditText$listenForDeleteEmpty$1;-><init>(Lcom/stripe/android/view/StripeEditText;)V

    check-cast v0, Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Lcom/stripe/android/view/StripeEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private final listenForTextChanges()V
    .registers 2

    .line 273
    new-instance v0, Lcom/stripe/android/view/StripeEditText$listenForTextChanges$$inlined$doAfterTextChanged$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/view/StripeEditText$listenForTextChanges$$inlined$doAfterTextChanged$1;-><init>(Lcom/stripe/android/view/StripeEditText;)V

    .line 274
    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private final setHintSafely(Ljava/lang/CharSequence;)V
    .registers 3

    .line 183
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/android/view/StripeEditText;

    .line 184
    invoke-virtual {v0, p1}, Lcom/stripe/android/view/StripeEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 185
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 183
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_18

    :catch_e
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18
    return-void
.end method


# virtual methods
.method protected getAccessibilityText()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText;->accessibilityText:Ljava/lang/String;

    return-object v0
.end method

.method public final getCachedColorStateList()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText;->cachedColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getDefaultErrorColorInt()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/stripe/android/view/StripeEditText;->determineDefaultErrorColor()V

    .line 96
    iget v0, p0, Lcom/stripe/android/view/StripeEditText;->defaultErrorColor:I

    return v0
.end method

.method public final getErrorMessage$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getFieldText$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const-string v0, ""

    :goto_11
    return-object v0
.end method

.method public final getJob$stripe_release()Lkotlinx/coroutines/CompletableJob;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText;->job:Lkotlinx/coroutines/CompletableJob;

    return-object v0
.end method

.method public final getShouldShowError()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/stripe/android/view/StripeEditText;->shouldShowError:Z

    return v0
.end method

.method protected final isLastKeyDelete()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/stripe/android/view/StripeEditText;->isLastKeyDelete:Z

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "outAttrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 112
    new-instance v0, Lcom/stripe/android/view/StripeEditText$SoftDeleteInputConnection;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/stripe/android/view/StripeEditText;->deleteEmptyListener:Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/stripe/android/view/StripeEditText$SoftDeleteInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;ZLcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 111
    :goto_15
    check-cast v0, Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 196
    invoke-super {p0}, Lcom/google/android/material/textfield/TextInputEditText;->onDetachedFromWindow()V

    .line 197
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText;->job:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-super {p0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 190
    iget-boolean v0, p0, Lcom/stripe/android/view/StripeEditText;->shouldShowError:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeEditText;->getAccessibilityText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_18
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText;->errorMessage:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/stripe/android/view/StripeEditText;->shouldShowError:Z

    if-eqz v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setAfterTextChangedListener(Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;)V
    .registers 2
    .param p1    # Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 123
    iput-object p1, p0, Lcom/stripe/android/view/StripeEditText;->afterTextChangedListener:Lcom/stripe/android/view/StripeEditText$AfterTextChangedListener;

    return-void
.end method

.method public final setDeleteEmptyListener(Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;)V
    .registers 2
    .param p1    # Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 132
    iput-object p1, p0, Lcom/stripe/android/view/StripeEditText;->deleteEmptyListener:Lcom/stripe/android/view/StripeEditText$DeleteEmptyListener;

    return-void
.end method

.method public final setErrorColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/StripeEditText;->errorColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setErrorMessage(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 140
    iput-object p1, p0, Lcom/stripe/android/view/StripeEditText;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public final setErrorMessage$stripe_release(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 72
    iput-object p1, p0, Lcom/stripe/android/view/StripeEditText;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public final setErrorMessageListener(Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;)V
    .registers 2
    .param p1    # Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 136
    iput-object p1, p0, Lcom/stripe/android/view/StripeEditText;->errorMessageListener:Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    return-void
.end method

.method public final setHintDelayed(IJ)V
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 159
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "resources.getText(hintResource)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/android/view/StripeEditText;->setHintDelayed(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method public final setHintDelayed(Ljava/lang/CharSequence;J)V
    .registers 12
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText;->workContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/android/view/StripeEditText$setHintDelayed$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/stripe/android/view/StripeEditText$setHintDelayed$1;-><init>(Lcom/stripe/android/view/StripeEditText;JLjava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method protected final setLastKeyDelete(Z)V
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/stripe/android/view/StripeEditText;->isLastKeyDelete:Z

    return-void
.end method

.method public final setShouldShowError(Z)V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 56
    iget-object v1, p0, Lcom/stripe/android/view/StripeEditText;->errorMessageListener:Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;

    if-eqz v1, :cond_f

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-interface {v1, v0}, Lcom/stripe/android/view/StripeEditText$ErrorMessageListener;->displayErrorMessage(Ljava/lang/String;)V

    .line 59
    :cond_f
    iget-boolean v0, p0, Lcom/stripe/android/view/StripeEditText;->shouldShowError:Z

    if-eq v0, p1, :cond_2c

    if-eqz p1, :cond_24

    .line 62
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText;->errorColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_20

    :cond_1e
    iget v0, p0, Lcom/stripe/android/view/StripeEditText;->defaultErrorColor:I

    :goto_20
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/StripeEditText;->setTextColor(I)V

    goto :goto_29

    .line 64
    :cond_24
    iget-object v0, p0, Lcom/stripe/android/view/StripeEditText;->cachedColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/stripe/android/view/StripeEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    :goto_29
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeEditText;->refreshDrawableState()V

    .line 69
    :cond_2c
    iput-boolean p1, p0, Lcom/stripe/android/view/StripeEditText;->shouldShowError:Z

    return-void
.end method
