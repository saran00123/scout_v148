.class public Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MessageImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_message_image:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private thumbUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "MessageImageActivity"

    .line 31
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->activity_message_image:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    return-object p0
.end method

.method private initData()V
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "thumbUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->thumbUrl:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->thumbUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->thumbUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->download(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a0448

    .line 111
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00f2

    .line 112
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->activity_message_image:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 113
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->activity_message_image:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 114
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->activity_message_image:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    return-void
.end method


# virtual methods
.method protected exitCoutOut()V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 69
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public fullScreen()V
    .registers 3

    .line 87
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected initEvent()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->activity_message_image:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00f2

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_29

    .line 132
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->finish()V

    goto :goto_29

    .line 135
    :cond_13
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_23

    .line 136
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->layout_left:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_29

    .line 138
    :cond_23
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->layout_left:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_29
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->fullScreen()V

    .line 38
    invoke-static {p0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->addActivity(Landroid/app/Activity;)V

    const p1, 0x7f0d0034

    .line 39
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->initView()V

    .line 41
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->initEvent()V

    .line 42
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 124
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 100
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 82
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->fullScreen()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 105
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageImageActivity;->fullScreen()V

    return-void
.end method
