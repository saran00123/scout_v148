.class public abstract Lcom/stripe/android/view/StripeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "StripeActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010#\u001a\u00020$H$J\u0012\u0010%\u001a\u00020$2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0014J\u0010\u0010(\u001a\u00020\n2\u0006\u0010)\u001a\u00020*H\u0016J\u0010\u0010+\u001a\u00020\n2\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010.\u001a\u00020\n2\u0006\u0010)\u001a\u00020*H\u0016J\u0010\u0010/\u001a\u00020$2\u0006\u00100\u001a\u00020\nH\u0014J\u0010\u00101\u001a\u00020$2\u0006\u00102\u001a\u000203H\u0004R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@DX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0008\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0008\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0008\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0008\u001a\u0004\u0008 \u0010!\u00a8\u00064"
    }
    d2 = {
        "Lcom/stripe/android/view/StripeActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "alertDisplayer",
        "Lcom/stripe/android/view/AlertDisplayer;",
        "getAlertDisplayer",
        "()Lcom/stripe/android/view/AlertDisplayer;",
        "alertDisplayer$delegate",
        "Lkotlin/Lazy;",
        "value",
        "",
        "isProgressBarVisible",
        "()Z",
        "setProgressBarVisible",
        "(Z)V",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "getProgressBar$stripe_release",
        "()Landroid/widget/ProgressBar;",
        "progressBar$delegate",
        "stripeColorUtils",
        "Lcom/stripe/android/view/StripeColorUtils;",
        "getStripeColorUtils",
        "()Lcom/stripe/android/view/StripeColorUtils;",
        "stripeColorUtils$delegate",
        "viewBinding",
        "Lcom/stripe/android/databinding/StripeActivityBinding;",
        "getViewBinding",
        "()Lcom/stripe/android/databinding/StripeActivityBinding;",
        "viewBinding$delegate",
        "viewStub",
        "Landroid/view/ViewStub;",
        "getViewStub$stripe_release",
        "()Landroid/view/ViewStub;",
        "viewStub$delegate",
        "onActionSave",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onPrepareOptionsMenu",
        "onProgressBarVisibilityChanged",
        "visible",
        "showError",
        "error",
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


# instance fields
.field private final alertDisplayer$delegate:Lkotlin/Lazy;

.field private isProgressBarVisible:Z

.field private final progressBar$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stripeColorUtils$delegate:Lkotlin/Lazy;

.field private final viewBinding$delegate:Lkotlin/Lazy;

.field private final viewStub$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 17
    new-instance v0, Lcom/stripe/android/view/StripeActivity$viewBinding$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/view/StripeActivity$viewBinding$2;-><init>(Lcom/stripe/android/view/StripeActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/view/StripeActivity;->viewBinding$delegate:Lkotlin/Lazy;

    .line 21
    new-instance v0, Lcom/stripe/android/view/StripeActivity$progressBar$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/view/StripeActivity$progressBar$2;-><init>(Lcom/stripe/android/view/StripeActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/view/StripeActivity;->progressBar$delegate:Lkotlin/Lazy;

    .line 25
    new-instance v0, Lcom/stripe/android/view/StripeActivity$viewStub$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/view/StripeActivity$viewStub$2;-><init>(Lcom/stripe/android/view/StripeActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/view/StripeActivity;->viewStub$delegate:Lkotlin/Lazy;

    .line 43
    new-instance v0, Lcom/stripe/android/view/StripeActivity$alertDisplayer$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/view/StripeActivity$alertDisplayer$2;-><init>(Lcom/stripe/android/view/StripeActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/view/StripeActivity;->alertDisplayer$delegate:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lcom/stripe/android/view/StripeActivity$stripeColorUtils$2;

    invoke-direct {v0, p0}, Lcom/stripe/android/view/StripeActivity$stripeColorUtils$2;-><init>(Lcom/stripe/android/view/StripeActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/view/StripeActivity;->stripeColorUtils$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/stripe/android/view/StripeActivity;)Lcom/stripe/android/databinding/StripeActivityBinding;
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/stripe/android/view/StripeActivity;->getViewBinding()Lcom/stripe/android/databinding/StripeActivityBinding;

    move-result-object p0

    return-object p0
.end method

.method private final getAlertDisplayer()Lcom/stripe/android/view/AlertDisplayer;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/view/StripeActivity;->alertDisplayer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/view/AlertDisplayer;

    return-object v0
.end method

.method private final getStripeColorUtils()Lcom/stripe/android/view/StripeColorUtils;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/view/StripeActivity;->stripeColorUtils$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/view/StripeColorUtils;

    return-object v0
.end method

.method private final getViewBinding()Lcom/stripe/android/databinding/StripeActivityBinding;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/view/StripeActivity;->viewBinding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/databinding/StripeActivityBinding;

    return-object v0
.end method


# virtual methods
.method public final getProgressBar$stripe_release()Landroid/widget/ProgressBar;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/StripeActivity;->progressBar$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final getViewStub$stripe_release()Landroid/view/ViewStub;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/view/StripeActivity;->viewStub$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method protected final isProgressBarVisible()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/stripe/android/view/StripeActivity;->isProgressBarVisible:Z

    return v0
.end method

.method protected abstract onActionSave()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/stripe/android/view/StripeActivity;->getViewBinding()Lcom/stripe/android/databinding/StripeActivityBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/android/databinding/StripeActivityBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/StripeActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-direct {p0}, Lcom/stripe/android/view/StripeActivity;->getViewBinding()Lcom/stripe/android/databinding/StripeActivityBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/stripe/android/databinding/StripeActivityBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/StripeActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 56
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_23
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/stripe/android/R$menu;->add_payment_method:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 62
    sget v0, Lcom/stripe/android/R$id;->action_save:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string v0, "menu.findItem(R.id.action_save)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/stripe/android/view/StripeActivity;->isProgressBarVisible:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/stripe/android/R$id;->action_save:I

    if-ne v0, v1, :cond_12

    .line 68
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeActivity;->onActionSave()V

    const/4 p1, 0x1

    goto :goto_1b

    .line 71
    :cond_12
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 73
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeActivity;->onBackPressed()V

    :cond_1b
    :goto_1b
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget v0, Lcom/stripe/android/R$id;->action_save:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 81
    invoke-direct {p0}, Lcom/stripe/android/view/StripeActivity;->getStripeColorUtils()Lcom/stripe/android/view/StripeColorUtils;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const-string v3, "theme"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget v3, Lcom/stripe/android/R$attr;->titleTextColor:I

    .line 84
    sget v4, Lcom/stripe/android/R$drawable;->stripe_ic_checkmark:I

    .line 81
    invoke-virtual {v1, v2, v3, v4}, Lcom/stripe/android/view/StripeColorUtils;->getTintedIconWithAttribute(Landroid/content/res/Resources$Theme;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "saveItem"

    .line 86
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 87
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onProgressBarVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method protected final setProgressBarVisible(Z)V
    .registers 4

    .line 31
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeActivity;->getProgressBar$stripe_release()Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    const/16 v1, 0x8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 36
    invoke-virtual {p0}, Lcom/stripe/android/view/StripeActivity;->invalidateOptionsMenu()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/StripeActivity;->onProgressBarVisibilityChanged(Z)V

    .line 40
    iput-boolean p1, p0, Lcom/stripe/android/view/StripeActivity;->isProgressBarVisible:Z

    return-void
.end method

.method protected final showError(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/stripe/android/view/StripeActivity;->getAlertDisplayer()Lcom/stripe/android/view/AlertDisplayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/android/view/AlertDisplayer;->show(Ljava/lang/String;)V

    return-void
.end method
