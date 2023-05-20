.class public final Lcom/vivo/push/a;
.super Ljava/lang/Object;
.source "BundleWapper.java"


# instance fields
.field public a:Landroid/os/Bundle;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/vivo/push/a;->b:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/vivo/push/a;->c:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/vivo/push/a;
    .registers 7

    const-string v0, "BundleWapper"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "create error : intent is null"

    .line 39
    invoke-static {v0, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 43
    :cond_b
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1e

    const-string v3, "client_pkgname"

    .line 45
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v3, v1

    .line 50
    :goto_1f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "create warning: pkgName is null"

    .line 51
    invoke-static {v0, v4}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 55
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_3b

    goto :goto_43

    :cond_3b
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_43
    move-object v4, v1

    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4f

    const-string p0, "create warning: targetPkgName is null"

    .line 57
    invoke-static {v0, p0}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_4f
    new-instance p0, Lcom/vivo/push/a;

    invoke-direct {p0, v3, v4, v2}, Lcom/vivo/push/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    .line 75
    :cond_b
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    .line 82
    :cond_b
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/Serializable;)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    .line 124
    :cond_b
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    .line 145
    :cond_b
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final b(Ljava/lang/String;I)I
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_5

    return p2

    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;J)J
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_5

    return-wide p2

    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
