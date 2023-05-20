.class public final Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/ults/listeners/challenges/TextChallenge;
.implements Lcom/ults/listeners/challenges/SingleSelectChallenge;
.implements Lcom/ults/listeners/challenges/MultiSelectChallenge;
.implements Lcom/ults/listeners/challenges/WebChallenge;
.implements Lcom/ults/listeners/SdkChallengeInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B\u0007\u00a2\u0006\u0004\u0008S\u0010\u000fJ\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u000fJ\u000f\u0010\u0015\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u000fJ\u000f\u0010\u0016\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u000fJ\u000f\u0010\u0017\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u000fJ\u000f\u0010\u0018\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u000fJ\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u000fJ\u000f\u0010\u001e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u000fJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\"\u0010\u000fJ\u0017\u0010$\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0013J\u000f\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008&\u0010\'R\u001d\u0010-\u001a\u00020(8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u001d\u00102\u001a\u00020.8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u0010*\u001a\u0004\u00080\u00101R(\u0010:\u001a\u0002038\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0004\u0008\u0014\u00104\u0012\u0004\u00089\u0010\u000f\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001d\u0010>\u001a\u00020;8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010*\u001a\u0004\u0008)\u0010=R\u001d\u0010C\u001a\u00020?8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010*\u001a\u0004\u0008A\u0010BR\u001d\u0010H\u001a\u00020D8@@\u0000X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008E\u0010*\u001a\u0004\u0008F\u0010GR)\u0010M\u001a\u0008\u0012\u0004\u0012\u00020J0I8B@\u0002X\u0082\u0084\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u000c\n\u0004\u0008F\u0010*\u001a\u0004\u0008K\u0010LR\u001d\u0010R\u001a\u00020N8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008O\u0010*\u001a\u0004\u0008P\u0010Q\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006T"
    }
    d2 = {
        "Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/ults/listeners/challenges/TextChallenge;",
        "Lcom/ults/listeners/challenges/SingleSelectChallenge;",
        "Lcom/ults/listeners/challenges/MultiSelectChallenge;",
        "Lcom/ults/listeners/challenges/WebChallenge;",
        "Lcom/ults/listeners/SdkChallengeInterface;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "outState",
        "onSaveInstanceState",
        "onLowMemory",
        "()V",
        "",
        "level",
        "onTrimMemory",
        "(I)V",
        "a",
        "onPause",
        "onResume",
        "onDestroy",
        "onBackPressed",
        "",
        "s",
        "typeTextChallengeValue",
        "(Ljava/lang/String;)V",
        "clickSubmitButton",
        "clickCancelButton",
        "Lcom/ults/listeners/ChallengeType;",
        "getChallengeType",
        "()Lcom/ults/listeners/ChallengeType;",
        "expandTextsBeforeScreenshot",
        "i",
        "selectObject",
        "Lcom/ults/listeners/BaseSdkChallenge;",
        "getCurrentChallenge",
        "()Lcom/ults/listeners/BaseSdkChallenge;",
        "La/a/a/a/e/g0;",
        "b",
        "Lkotlin/Lazy;",
        "getTransactionTimer",
        "()La/a/a/a/e/g0;",
        "transactionTimer",
        "La/a/a/a/c/c;",
        "d",
        "getErrorReporter",
        "()La/a/a/a/c/c;",
        "errorReporter",
        "",
        "Z",
        "getRefreshUi$3ds2sdk_release",
        "()Z",
        "setRefreshUi$3ds2sdk_release",
        "(Z)V",
        "getRefreshUi$3ds2sdk_release$annotations",
        "refreshUi",
        "La/a/a/a/h/l;",
        "e",
        "()La/a/a/a/h/l;",
        "presenter",
        "La/a/a/a/h/r;",
        "h",
        "getViewArgs",
        "()La/a/a/a/h/r;",
        "viewArgs",
        "La/a/a/a/a/b;",
        "f",
        "c",
        "()La/a/a/a/a/b;",
        "viewBinding",
        "Lkotlin/Result;",
        "Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;",
        "getChallengeStatusReceiver-d1pmJ48",
        "()Ljava/lang/Object;",
        "challengeStatusReceiver",
        "La/a/a/a/h/a;",
        "g",
        "getViewModel",
        "()La/a/a/a/h/a;",
        "viewModel",
        "<init>",
        "3ds2sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Lkotlin/Lazy;

.field public final c:Lkotlin/Lazy;

.field public final d:Lkotlin/Lazy;

.field public final e:Lkotlin/Lazy;

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;

.field public final h:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$d;

    invoke-direct {v0, p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$d;-><init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$a;

    invoke-direct {v0, p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$a;-><init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$b;

    invoke-direct {v0, p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$b;-><init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$c;

    invoke-direct {v0, p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$c;-><init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$f;

    invoke-direct {v0, p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$f;-><init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->f:Lkotlin/Lazy;

    new-instance v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;

    invoke-direct {v0, p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$g;-><init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$e;

    invoke-direct {v0, p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$e;-><init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static final a(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/c/c;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/a/a/c/c;

    return-object p0
.end method

.method public static final b(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/h/r;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/a/a/h/r;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 5

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move-object v0, v2

    :cond_c
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_25

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    :cond_21
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_25
    return-void
.end method

.method public final b()La/a/a/a/h/l;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/h/l;

    return-object v0
.end method

.method public final c()La/a/a/a/a/b;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/b;

    return-object v0
.end method

.method public clickCancelButton()V
    .registers 3

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v1, La/a/a/a/e/d$a;->a:La/a/a/a/e/d$a;

    invoke-virtual {v0, v1}, La/a/a/a/h/l;->a(La/a/a/a/e/d;)V

    return-void
.end method

.method public clickSubmitButton()V
    .registers 2

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/h/l;->b()V

    return-void
.end method

.method public expandTextsBeforeScreenshot()V
    .registers 4

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 1
    iget-object v0, v0, La/a/a/a/h/l;->a:Lcom/stripe/android/stripe3ds2/views/InformationZoneView;

    .line 2
    iget-object v1, v0, Lcom/stripe/android/stripe3ds2/views/InformationZoneView;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setRotation(F)V

    iget-object v1, v0, Lcom/stripe/android/stripe3ds2/views/InformationZoneView;->e:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setRotation(F)V

    iget-object v1, v0, Lcom/stripe/android/stripe3ds2/views/InformationZoneView;->g:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/stripe/android/stripe3ds2/views/InformationZoneView;->c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    return-void
.end method

.method public getChallengeType()Lcom/ults/listeners/ChallengeType;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 1
    iget-object v0, v0, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getUiType()Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, v0, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->b:Lcom/ults/listeners/ChallengeType;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public getCheckboxesOrdered()[Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 2
    iget-object v0, v0, La/a/a/a/h/l;->e:La/a/a/a/h/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, La/a/a/a/h/s;->getCheckBoxes()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v1

    :goto_f
    if-eqz v0, :cond_26

    const/4 v1, 0x0

    .line 3
    new-array v1, v1, [Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    move-object v1, v0

    check-cast v1, [Landroid/widget/CheckBox;

    goto :goto_26

    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    return-object v1
.end method

.method public getCurrentChallenge()Lcom/ults/listeners/BaseSdkChallenge;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public getWebView()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 2
    iget-object v0, v0, La/a/a/a/h/l;->f:La/a/a/a/h/u;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, La/a/a/a/h/u;->getWebView()Lcom/stripe/android/stripe3ds2/views/ThreeDS2WebView;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 1
    sget-object v1, La/a/a/a/e/d$a;->a:La/a/a/a/e/d$a;

    invoke-virtual {v0, v1}, La/a/a/a/h/l;->a(La/a/a/a/e/d;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->c()La/a/a/a/a/b;

    move-result-object v0

    .line 1
    iget-object v0, v0, La/a/a/a/a/b;->a:Landroid/widget/ScrollView;

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    const-string v1, "refresh_ui"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_20

    :cond_1f
    move p1, v0

    :goto_20
    iput-boolean p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->a:Z

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object p1

    .line 3
    iget-object v1, p1, La/a/a/a/h/l;->s:La/a/a/a/h/v;

    .line 4
    iget-object v2, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getToolbarCustomization()Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;

    move-result-object v2

    iget-object v3, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    sget-object v4, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->CANCEL:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {v3, v4}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, La/a/a/a/h/v;->a(Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    move-result-object v1

    if-eqz v1, :cond_44

    new-instance v2, La/a/a/a/h/h;

    invoke-direct {v2, p1, v1}, La/a/a/a/h/h;-><init>(La/a/a/a/h/l;Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_44
    invoke-virtual {p1}, La/a/a/a/h/l;->d()V

    iget-object v1, p1, La/a/a/a/h/l;->d:La/a/a/a/h/t;

    if-eqz v1, :cond_77

    iget-object v2, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    invoke-virtual {v2, v1}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->setChallengeEntryView(Landroid/view/View;)V

    iget-object v1, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    iget-object v2, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getSubmitAuthenticationLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    sget-object v4, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->SUBMIT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    :goto_5c
    invoke-virtual {v3, v4}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->b(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V

    iget-object v1, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    iget-object v2, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getResendInformationLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    sget-object v4, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->RESEND:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {v3, v4}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->a(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V

    goto :goto_d5

    :cond_77
    iget-object v1, p1, La/a/a/a/h/l;->e:La/a/a/a/h/s;

    if-eqz v1, :cond_8d

    iget-object v2, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    invoke-virtual {v2, v1}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->setChallengeEntryView(Landroid/view/View;)V

    iget-object v1, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    iget-object v2, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getSubmitAuthenticationLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    sget-object v4, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->NEXT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    goto :goto_5c

    :cond_8d
    iget-object v1, p1, La/a/a/a/h/l;->f:La/a/a/a/h/u;

    if-eqz v1, :cond_b8

    iget-object v2, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    invoke-virtual {v2, v1}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->setChallengeEntryView(Landroid/view/View;)V

    iget-object v1, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->a(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V

    iget-object v1, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    invoke-virtual {v1, v2, v2}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->b(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V

    iget-object v1, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    invoke-virtual {v1, v2, v2}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->b(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V

    iget-object v1, p1, La/a/a/a/h/l;->f:La/a/a/a/h/u;

    new-instance v2, La/a/a/a/h/p;

    invoke-direct {v2, p1}, La/a/a/a/h/p;-><init>(La/a/a/a/h/l;)V

    invoke-virtual {v1, v2}, La/a/a/a/h/u;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, La/a/a/a/h/l;->c:Lcom/stripe/android/stripe3ds2/views/BrandZoneView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d5

    :cond_b8
    iget-object v1, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v1}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getUiType()Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    move-result-object v1

    sget-object v2, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;->g:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    if-ne v1, v2, :cond_d5

    iget-object v1, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    iget-object v2, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getOobContinueLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    sget-object v4, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->CONTINUE:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {v3, v4}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->b(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V

    .line 6
    :cond_d5
    :goto_d5
    iget-object v1, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    iget-object v2, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getChallengeInfoHeader()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-virtual {v3}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getLabelCustomization()Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->a(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V

    iget-object v1, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    iget-object v2, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getChallengeInfoText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-virtual {v3}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getLabelCustomization()Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->b(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V

    iget-object v1, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    iget-object v2, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getShouldShowChallengeInfoTextIndicator()Z

    move-result v2

    if-eqz v2, :cond_103

    sget v0, Lcom/stripe/android/stripe3ds2/R$drawable;->ic_indicator:I

    :cond_103
    invoke-virtual {v1, v0}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->setInfoTextIndicator(I)V

    iget-object v0, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    iget-object v1, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v1}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getWhitelistingInfoText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getLabelCustomization()Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    move-result-object v2

    iget-object v3, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    sget-object v4, Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;->SELECT:Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;

    invoke-virtual {v3, v4}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization$ButtonType;)Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->a(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V

    iget-object v0, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    new-instance v1, La/a/a/a/h/f;

    invoke-direct {v1, p1}, La/a/a/a/h/f;-><init>(La/a/a/a/h/l;)V

    invoke-virtual {v0, v1}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->setSubmitButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, La/a/a/a/h/l;->b:Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;

    new-instance v1, La/a/a/a/h/g;

    invoke-direct {v1, p1}, La/a/a/a/h/g;-><init>(La/a/a/a/h/l;)V

    invoke-virtual {v0, v1}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->setResendButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p1, La/a/a/a/h/l;->a:Lcom/stripe/android/stripe3ds2/views/InformationZoneView;

    iget-object v1, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v1}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getWhyInfoLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getWhyInfoText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-virtual {v3}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getLabelCustomization()Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/stripe/android/stripe3ds2/views/InformationZoneView;->b(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V

    iget-object v0, p1, La/a/a/a/h/l;->a:Lcom/stripe/android/stripe3ds2/views/InformationZoneView;

    iget-object v1, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v1}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getExpandInfoLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    invoke-virtual {v2}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getExpandInfoText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-virtual {v3}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getLabelCustomization()Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/stripe/android/stripe3ds2/views/InformationZoneView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V

    iget-object v0, p1, La/a/a/a/h/l;->o:Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;

    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;->getAccentColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_172

    iget-object p1, p1, La/a/a/a/h/l;->a:Lcom/stripe/android/stripe3ds2/views/InformationZoneView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/stripe/android/stripe3ds2/views/InformationZoneView;->setToggleColor$3ds2sdk_release(I)V

    :cond_172
    return-void
.end method

.method public onDestroy()V
    .registers 4

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 1
    iget-object v1, v0, La/a/a/a/h/l;->g:Landroid/app/Dialog;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    const/4 v1, 0x0

    iput-object v1, v0, La/a/a/a/h/l;->g:Landroid/app/Dialog;

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 1
    iget-object v0, v0, La/a/a/a/h/l;->t:La/a/a/a/g/b;

    invoke-interface {v0}, La/a/a/a/g/b;->a()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->a:Z

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->a()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 9

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-boolean v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->a:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/h/l;->c()V

    goto :goto_21

    :cond_f
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.ul.sdk.HANDLE_CHALLENGE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_21
    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 1
    iget-object v1, v0, La/a/a/a/h/l;->j:La/a/a/a/h/a;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, La/a/a/a/h/c;

    const/4 v2, 0x0

    invoke-direct {v5, v1, v2}, La/a/a/a/h/c;-><init>(La/a/a/a/h/a;Lkotlin/coroutines/Continuation;)V

    const-wide/16 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/CoroutineLiveDataKt;->liveData$default(Lkotlin/coroutines/CoroutineContext;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 3
    iget-object v2, v0, La/a/a/a/h/l;->i:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    new-instance v3, La/a/a/a/h/k;

    invoke-direct {v3, v0}, La/a/a/a/h/k;-><init>(La/a/a/a/h/l;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "refresh_ui"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 1
    iget-object v0, v0, La/a/a/a/h/l;->t:La/a/a/a/g/b;

    invoke-interface {v0}, La/a/a/a/g/b;->a()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTrimMemory(I)V

    return-void
.end method

.method public selectObject(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 1
    iget-object v0, v0, La/a/a/a/h/l;->e:La/a/a/a/h/s;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, La/a/a/a/h/s;->a(I)V

    :cond_b
    return-void
.end method

.method public typeTextChallengeValue(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b()La/a/a/a/h/l;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "text"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, La/a/a/a/h/l;->d:La/a/a/a/h/t;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, La/a/a/a/h/t;->setTextEntry$3ds2sdk_release(Ljava/lang/String;)V

    :cond_18
    return-void
.end method
