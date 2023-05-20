.class public Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;
.super Landroidx/fragment/app/Fragment;
.source "V4ListenerFragment.java"


# instance fields
.field mFragmentLifecycle:Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .line 42
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const-string v0, "onDestroy: "

    .line 43
    invoke-static {v0}, Lcom/app/hubert/guide/util/LogUtil;->d(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;->mFragmentLifecycle:Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;

    invoke-interface {v0}, Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 36
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 37
    iget-object v0, p0, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;->mFragmentLifecycle:Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;

    invoke-interface {v0}, Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;->onDestroyView()V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 23
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    const-string v0, "onStart: "

    .line 24
    invoke-static {v0}, Lcom/app/hubert/guide/util/LogUtil;->d(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;->mFragmentLifecycle:Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;

    invoke-interface {v0}, Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 30
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 31
    iget-object v0, p0, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;->mFragmentLifecycle:Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;

    invoke-interface {v0}, Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;->onStop()V

    return-void
.end method

.method public setFragmentLifecycle(Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/app/hubert/guide/lifecycle/V4ListenerFragment;->mFragmentLifecycle:Lcom/app/hubert/guide/lifecycle/FragmentLifecycle;

    return-void
.end method
