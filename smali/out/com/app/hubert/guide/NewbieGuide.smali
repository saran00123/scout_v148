.class public Lcom/app/hubert/guide/NewbieGuide;
.super Ljava/lang/Object;
.source "NewbieGuide.java"


# static fields
.field public static final FAILED:I = -0x1

.field public static final SUCCESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "NewbieGuide"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetLabel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const-string v1, "NewbieGuide"

    .line 54
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static with(Landroid/app/Activity;)Lcom/app/hubert/guide/core/Builder;
    .registers 2

    .line 36
    new-instance v0, Lcom/app/hubert/guide/core/Builder;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Builder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static with(Landroid/app/Fragment;)Lcom/app/hubert/guide/core/Builder;
    .registers 2

    .line 40
    new-instance v0, Lcom/app/hubert/guide/core/Builder;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Builder;-><init>(Landroid/app/Fragment;)V

    return-object v0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/app/hubert/guide/core/Builder;
    .registers 2

    .line 44
    new-instance v0, Lcom/app/hubert/guide/core/Builder;

    invoke-direct {v0, p0}, Lcom/app/hubert/guide/core/Builder;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method
