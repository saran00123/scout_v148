.class public Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;
.super Landroidx/fragment/app/Fragment;
.source "PreviewImageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment$OnFragmentInteractionListener;
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"


# instance fields
.field private fragment_preview_image_previewImage:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

.field private mListener:Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment$OnFragmentInteractionListener;

.field private recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

.field private showTop:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->showTop:Z

    return-void
.end method

.method private initEvent()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->fragment_preview_image_previewImage:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    invoke-virtual {v0, p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTumb()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->fragment_preview_image_previewImage:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->uri(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->view:Landroid/view/View;

    const v1, 0x7f0a033f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->fragment_preview_image_previewImage:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 65
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->fragment_preview_image_previewImage:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 66
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->fragment_preview_image_previewImage:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    return-void
.end method

.method public static newInstance(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)Landroidx/fragment/app/Fragment;
    .registers 4

    .line 32
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 34
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 35
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 82
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 83
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_c

    .line 84
    check-cast p1, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment$OnFragmentInteractionListener;

    return-void

    .line 86
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onButtonPressed(Z)V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_7

    .line 72
    invoke-interface {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment$OnFragmentInteractionListener;->onFragmentInteraction(Z)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a033f

    if-eq p1, v0, :cond_a

    goto :goto_17

    .line 101
    :cond_a
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->showTop:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->onButtonPressed(Z)V

    .line 102
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->showTop:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->showTop:Z

    :goto_17
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 43
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->recordBean:Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    :cond_17
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d0097

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->view:Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->initEvent()V

    .line 55
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->initTumb()V

    .line 56
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDetach()V
    .registers 2

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment$OnFragmentInteractionListener;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 2

    .line 109
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-nez p1, :cond_9

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->showTop:Z

    goto :goto_c

    :cond_9
    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/PreviewImageFragment;->showTop:Z

    :goto_c
    return-void
.end method
