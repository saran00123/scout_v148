.class public Lcom/app/hubert/guide/core/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field private static final LISTENER_FRAGMENT:Ljava/lang/String; = "listener_fragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private alwaysShow:Z

.field private current:I

.field private currentLayout:Lcom/app/hubert/guide/core/GuideLayout;

.field private fragment:Landroid/app/Fragment;

.field private guidePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/hubert/guide/model/GuidePage;",
            ">;"
        }
    .end annotation
.end field

.field private indexOfChild:I

.field private label:Ljava/lang/String;

.field private mParentView:Landroid/widget/FrameLayout;

.field private onGuideChangedListener:Lcom/app/hubert/guide/listener/OnGuideChangedListener;

.field private onPageChangedListener:Lcom/app/hubert/guide/listener/OnPageChangedListener;

.field private showCounts:I

.field private sp:Landroid/content/SharedPreferences;

.field private v4Fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lcom/app/hubert/guide/core/Builder;)V
    .registers 7

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/app/hubert/guide/core/Controller;->indexOfChild:I

    .line 59
    iget-object v1, p1, Lcom/app/hubert/guide/core/Builder;->activity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->activity:Landroid/app/Activity;

    .line 60
    iget-object v1, p1, Lcom/app/hubert/guide/core/Builder;->fragment:Landroid/app/Fragment;

    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->fragment:Landroid/app/Fragment;

    .line 61
    iget-object v1, p1, Lcom/app/hubert/guide/core/Builder;->v4Fragment:Landroidx/fragment/app/Fragment;

    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->v4Fragment:Landroidx/fragment/app/Fragment;

    .line 62
    iget-object v1, p1, Lcom/app/hubert/guide/core/Builder;->onGuideChangedListener:Lcom/app/hubert/guide/listener/OnGuideChangedListener;

    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->onGuideChangedListener:Lcom/app/hubert/guide/listener/OnGuideChangedListener;

    .line 63
    iget-object v1, p1, Lcom/app/hubert/guide/core/Builder;->onPageChangedListener:Lcom/app/hubert/guide/listener/OnPageChangedListener;

    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->onPageChangedListener:Lcom/app/hubert/guide/listener/OnPageChangedListener;

    .line 64
    iget-object v1, p1, Lcom/app/hubert/guide/core/Builder;->label:Ljava/lang/String;

    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->label:Ljava/lang/String;

    .line 65
    iget-boolean v1, p1, Lcom/app/hubert/guide/core/Builder;->alwaysShow:Z

    iput-boolean v1, p0, Lcom/app/hubert/guide/core/Controller;->alwaysShow:Z

    .line 66
    iget-object v1, p1, Lcom/app/hubert/guide/core/Builder;->guidePages:Ljava/util/List;

    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->guidePages:Ljava/util/List;

    .line 67
    iget v1, p1, Lcom/app/hubert/guide/core/Builder;->showCounts:I

    iput v1, p0, Lcom/app/hubert/guide/core/Controller;->showCounts:I

    .line 69
    iget-object p1, p1, Lcom/app/hubert/guide/core/Builder;->anchor:Landroid/view/View;

    if-nez p1, :cond_37

    .line 71
    iget-object p1, p0, Lcom/app/hubert/guide/core/Controller;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 73
    :cond_37
    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_40

    .line 74
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/app/hubert/guide/core/Controller;->mParentView:Landroid/widget/FrameLayout;

    goto :goto_73

    .line 76
    :cond_40
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/app/hubert/guide/core/Controller;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/app/hubert/guide/core/Controller;->indexOfChild:I

    .line 79
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 80
    iget v3, p0, Lcom/app/hubert/guide/core/Controller;->indexOfChild:I

    if-ltz v3, :cond_62

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_69

    .line 83
    :cond_62
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    :goto_69
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 87
    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->mParentView:Landroid/widget/FrameLayout;

    .line 91
    :goto_73
    iget-object p1, p0, Lcom/app/hubert/guide/core/Controller;->activity:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "NewbieGuide"

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/app/hubert/guide/core/Controller;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/app/hubert/guide/core/Controller;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->guidePages:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/app/hubert/guide/core/Controller;I)I
    .registers 2

    .line 39
    iput p1, p0, Lcom/app/hubert/guide/core/Controller;->current:I

    return p1
.end method

.method static synthetic access$200(Lcom/app/hubert/guide/core/Controller;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/app/hubert/guide/core/Controller;->showGuidePage()V

    return-void
.end method

.method static synthetic access$300(Lcom/app/hubert/guide/core/Controller;)Lcom/app/hubert/guide/listener/OnGuideChangedListener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->onGuideChangedListener:Lcom/app/hubert/guide/listener/OnGuideChangedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/app/hubert/guide/core/Controller;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/app/hubert/guide/core/Controller;->addListenerFragment()V

    return-void
.end method

.method static synthetic access$500(Lcom/app/hubert/guide/core/Controller;)Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->label:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/app/hubert/guide/core/Controller;)Landroid/content/SharedPreferences;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/app/hubert/guide/core/Controller;->sp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$700(Lcom/app/hubert/guide/core/Controller;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/app/hubert/guide/core/Controller;->showNextOrRemove()V

    return-void
.end method

.method private addListenerFragment()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->fragment:Landroid/app/Fragment;

    const-string v1, "listener_fragment"

    if-eqz v0, :cond_37

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v0, v2, :cond_37

    .line 231
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, v0}, Lcom/app/hubert/guide/core/Controller;->compatibleFragment(Landroid/app/Fragment;)V

    .line 232
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/app/hubert/guide/lifecycle/ListenerFragment;

    if-nez v2, :cond_2f

    .line 235
    new-instance v2, Lcom/app/hubert/guide/lifecycle/ListenerFragment;

    invoke-direct {v2}, Lcom/app/hubert/guide/lifecycle/ListenerFragment;-><init>()V

    .line 236
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 238
    :cond_2f
    new-instance v0, Lcom/app/hubert/guide/core/Controller$4;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller$4;-><init>(Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {v2, v0}, Lcom/app/hubert/guide/lifecycle/ListenerFragment;->setFragmentLifecycle(Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;)V

    .line 247
    :cond_37
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->v4Fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_5f

    .line 248
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;

    if-nez v2, :cond_57

    .line 251
    new-instance v2, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;

    invoke-direct {v2}, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;-><init>()V

    .line 252
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 254
    :cond_57
    new-instance v0, Lcom/app/hubert/guide/core/Controller$5;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller$5;-><init>(Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {v2, v0}, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;->setFragmentLifecycle(Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;)V

    :cond_5f
    return-void
.end method

.method private compatibleFragment(Landroid/app/Fragment;)V
    .registers 4

    .line 290
    :try_start_0
    const-class v0, Landroid/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 292
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    .line 296
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_18
    move-exception p1

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private removeListenerFragment()V
    .registers 4

    .line 266
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->fragment:Landroid/app/Fragment;

    const-string v1, "listener_fragment"

    if-eqz v0, :cond_25

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v0, v2, :cond_25

    .line 267
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->fragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 268
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/app/hubert/guide/lifecycle/ListenerFragment;

    if-eqz v2, :cond_25

    .line 270
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 273
    :cond_25
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->v4Fragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_40

    .line 274
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 275
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;

    if-eqz v1, :cond_40

    .line 277
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_40
    return-void
.end method

.method private showGuidePage()V
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->guidePages:Ljava/util/List;

    iget v1, p0, Lcom/app/hubert/guide/core/Controller;->current:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/hubert/guide/model/GuidePage;

    .line 159
    new-instance v1, Lcom/app/hubert/guide/core/GuideLayout;

    iget-object v2, p0, Lcom/app/hubert/guide/core/Controller;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p0}, Lcom/app/hubert/guide/core/GuideLayout;-><init>(Landroid/content/Context;Lcom/app/hubert/guide/model/GuidePage;Lcom/app/hubert/guide/core/Controller;)V

    .line 160
    new-instance v0, Lcom/app/hubert/guide/core/Controller$3;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller$3;-><init>(Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {v1, v0}, Lcom/app/hubert/guide/core/GuideLayout;->setOnGuideLayoutDismissListener(Lcom/app/hubert/guide/core/GuideLayout$OnGuideLayoutDismissListener;)V

    .line 166
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->mParentView:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iput-object v1, p0, Lcom/app/hubert/guide/core/Controller;->currentLayout:Lcom/app/hubert/guide/core/GuideLayout;

    .line 169
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->onPageChangedListener:Lcom/app/hubert/guide/listener/OnPageChangedListener;

    if-eqz v0, :cond_2f

    .line 170
    iget v1, p0, Lcom/app/hubert/guide/core/Controller;->current:I

    invoke-interface {v0, v1}, Lcom/app/hubert/guide/listener/OnPageChangedListener;->onPageChanged(I)V

    :cond_2f
    return-void
.end method

.method private showNextOrRemove()V
    .registers 3

    .line 175
    iget v0, p0, Lcom/app/hubert/guide/core/Controller;->current:I

    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller;->guidePages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_16

    .line 176
    iget v0, p0, Lcom/app/hubert/guide/core/Controller;->current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/app/hubert/guide/core/Controller;->current:I

    .line 177
    invoke-direct {p0}, Lcom/app/hubert/guide/core/Controller;->showGuidePage()V

    goto :goto_20

    .line 179
    :cond_16
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->onGuideChangedListener:Lcom/app/hubert/guide/listener/OnGuideChangedListener;

    if-eqz v0, :cond_1d

    .line 180
    invoke-interface {v0, p0}, Lcom/app/hubert/guide/listener/OnGuideChangedListener;->onRemoved(Lcom/app/hubert/guide/core/Controller;)V

    .line 182
    :cond_1d
    invoke-direct {p0}, Lcom/app/hubert/guide/core/Controller;->removeListenerFragment()V

    :goto_20
    return-void
.end method


# virtual methods
.method public remove()V
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->currentLayout:Lcom/app/hubert/guide/core/GuideLayout;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/app/hubert/guide/core/GuideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 207
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->currentLayout:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-virtual {v0}, Lcom/app/hubert/guide/core/GuideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 208
    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller;->currentLayout:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 210
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-nez v1, :cond_3e

    .line 211
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 213
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v2, :cond_3e

    .line 215
    iget v3, p0, Lcom/app/hubert/guide/core/Controller;->indexOfChild:I

    if-lez v3, :cond_37

    .line 216
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3e

    .line 218
    :cond_37
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->onGuideChangedListener:Lcom/app/hubert/guide/listener/OnGuideChangedListener;

    if-eqz v0, :cond_45

    .line 224
    invoke-interface {v0, p0}, Lcom/app/hubert/guide/listener/OnGuideChangedListener;->onRemoved(Lcom/app/hubert/guide/core/Controller;)V

    :cond_45
    return-void
.end method

.method public resetLabel()V
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/app/hubert/guide/core/Controller;->resetLabel(Ljava/lang/String;)V

    return-void
.end method

.method public resetLabel(Ljava/lang/String;)V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public show()V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->sp:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller;->label:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 100
    iget-boolean v1, p0, Lcom/app/hubert/guide/core/Controller;->alwaysShow:Z

    if-nez v1, :cond_12

    .line 101
    iget v1, p0, Lcom/app/hubert/guide/core/Controller;->showCounts:I

    if-lt v0, v1, :cond_12

    return-void

    .line 106
    :cond_12
    iget-object v1, p0, Lcom/app/hubert/guide/core/Controller;->mParentView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/app/hubert/guide/core/Controller$1;

    invoke-direct {v2, p0, v0}, Lcom/app/hubert/guide/core/Controller$1;-><init>(Lcom/app/hubert/guide/core/Controller;I)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showPage(I)V
    .registers 5

    if-ltz p1, :cond_23

    .line 129
    iget-object v0, p0, Lcom/app/hubert/guide/core/Controller;->guidePages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_23

    .line 133
    iget v0, p0, Lcom/app/hubert/guide/core/Controller;->current:I

    if-ne v0, p1, :cond_11

    return-void

    .line 136
    :cond_11
    iput p1, p0, Lcom/app/hubert/guide/core/Controller;->current:I

    .line 137
    iget-object p1, p0, Lcom/app/hubert/guide/core/Controller;->currentLayout:Lcom/app/hubert/guide/core/GuideLayout;

    new-instance v0, Lcom/app/hubert/guide/core/Controller$2;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller$2;-><init>(Lcom/app/hubert/guide/core/Controller;)V

    invoke-virtual {p1, v0}, Lcom/app/hubert/guide/core/GuideLayout;->setOnGuideLayoutDismissListener(Lcom/app/hubert/guide/core/GuideLayout$OnGuideLayoutDismissListener;)V

    .line 143
    iget-object p1, p0, Lcom/app/hubert/guide/core/Controller;->currentLayout:Lcom/app/hubert/guide/core/GuideLayout;

    invoke-virtual {p1}, Lcom/app/hubert/guide/core/GuideLayout;->remove()V

    return-void

    .line 130
    :cond_23
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Guide page position is out of range. current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", range: [ 0, "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/app/hubert/guide/core/Controller;->guidePages:Ljava/util/List;

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showPreviewPage()V
    .registers 2

    .line 151
    iget v0, p0, Lcom/app/hubert/guide/core/Controller;->current:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/app/hubert/guide/core/Controller;->current:I

    invoke-virtual {p0, v0}, Lcom/app/hubert/guide/core/Controller;->showPage(I)V

    return-void
.end method
