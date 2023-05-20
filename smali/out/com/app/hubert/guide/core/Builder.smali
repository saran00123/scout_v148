.class public Lcom/app/hubert/guide/core/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# instance fields
.field activity:Landroid/app/Activity;

.field alwaysShow:Z

.field anchor:Landroid/view/View;

.field fragment:Landroid/app/Fragment;

.field guidePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/hubert/guide/model/GuidePage;",
            ">;"
        }
    .end annotation
.end field

.field label:Ljava/lang/String;

.field onGuideChangedListener:Lcom/app/hubert/guide/listener/OnGuideChangedListener;

.field onPageChangedListener:Lcom/app/hubert/guide/listener/OnPageChangedListener;

.field showCounts:I

.field v4Fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/app/hubert/guide/core/Builder;->showCounts:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/hubert/guide/core/Builder;->guidePages:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/app/hubert/guide/core/Builder;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/app/hubert/guide/core/Builder;->showCounts:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/hubert/guide/core/Builder;->guidePages:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/app/hubert/guide/core/Builder;->fragment:Landroid/app/Fragment;

    .line 33
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/app/hubert/guide/core/Builder;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/app/hubert/guide/core/Builder;->showCounts:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/hubert/guide/core/Builder;->guidePages:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/app/hubert/guide/core/Builder;->v4Fragment:Landroidx/fragment/app/Fragment;

    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/app/hubert/guide/core/Builder;->activity:Landroid/app/Activity;

    return-void
.end method

.method private check()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/app/hubert/guide/core/Builder;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 131
    iget-object v0, p0, Lcom/app/hubert/guide/core/Builder;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/app/hubert/guide/core/Builder;->fragment:Landroid/app/Fragment;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/app/hubert/guide/core/Builder;->v4Fragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_15

    goto :goto_1d

    .line 132
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "activity is null, please make sure that fragment is showing when call NewbieGuide"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_1d
    return-void

    .line 129
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the param \'label\' is missing, please call setLabel()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addGuidePage(Lcom/app/hubert/guide/model/GuidePage;)Lcom/app/hubert/guide/core/Builder;
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/app/hubert/guide/core/Builder;->guidePages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public alwaysShow(Z)Lcom/app/hubert/guide/core/Builder;
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/app/hubert/guide/core/Builder;->alwaysShow:Z

    return-object p0
.end method

.method public anchor(Landroid/view/View;)Lcom/app/hubert/guide/core/Builder;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/app/hubert/guide/core/Builder;->anchor:Landroid/view/View;

    return-object p0
.end method

.method public build()Lcom/app/hubert/guide/core/Controller;
    .registers 2

    .line 111
    invoke-direct {p0}, Lcom/app/hubert/guide/core/Builder;->check()V

    .line 112
    new-instance v0, Lcom/app/hubert/guide/core/Controller;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller;-><init>(Lcom/app/hubert/guide/core/Builder;)V

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/app/hubert/guide/core/Builder;
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/app/hubert/guide/core/Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public setOnGuideChangedListener(Lcom/app/hubert/guide/listener/OnGuideChangedListener;)Lcom/app/hubert/guide/core/Builder;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/app/hubert/guide/core/Builder;->onGuideChangedListener:Lcom/app/hubert/guide/listener/OnGuideChangedListener;

    return-object p0
.end method

.method public setOnPageChangedListener(Lcom/app/hubert/guide/listener/OnPageChangedListener;)Lcom/app/hubert/guide/core/Builder;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/app/hubert/guide/core/Builder;->onPageChangedListener:Lcom/app/hubert/guide/listener/OnPageChangedListener;

    return-object p0
.end method

.method public setShowCounts(I)Lcom/app/hubert/guide/core/Builder;
    .registers 2

    .line 58
    iput p1, p0, Lcom/app/hubert/guide/core/Builder;->showCounts:I

    return-object p0
.end method

.method public show()Lcom/app/hubert/guide/core/Controller;
    .registers 2

    .line 121
    invoke-direct {p0}, Lcom/app/hubert/guide/core/Builder;->check()V

    .line 122
    new-instance v0, Lcom/app/hubert/guide/core/Controller;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Controller;-><init>(Lcom/app/hubert/guide/core/Builder;)V

    .line 123
    invoke-virtual {v0}, Lcom/app/hubert/guide/core/Controller;->show()V

    return-object v0
.end method
