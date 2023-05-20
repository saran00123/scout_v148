.class public Lcom/pilotlab/rollereye/CustomerView/Share;
.super Ljava/lang/Object;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/CustomerView/Share$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Share"


# instance fields
.field private activity:Landroid/app/Activity;

.field private componentClassName:Ljava/lang/String;

.field private componentPackageName:Ljava/lang/String;

.field private contentText:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private forcedUseSystemChooser:Z

.field private requestCode:I

.field private shareFileUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->access$000(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->activity:Landroid/app/Activity;

    .line 68
    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->access$100(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->contentType:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->access$200(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->title:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->access$300(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->shareFileUri:Landroid/net/Uri;

    .line 71
    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->access$400(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->contentText:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->access$500(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->componentPackageName:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->access$600(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->componentClassName:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->access$700(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->requestCode:I

    .line 75
    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/Share$Builder;->access$800(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->forcedUseSystemChooser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;Lcom/pilotlab/rollereye/CustomerView/Share$1;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/Share;-><init>(Lcom/pilotlab/rollereye/CustomerView/Share$Builder;)V

    return-void
.end method

.method private checkShareParam()Z
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "Share"

    if-nez v0, :cond_d

    const-string v0, "activity is null."

    .line 159
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 163
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->contentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "Share content type is empty."

    .line 164
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 168
    :cond_1b
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->contentType:Ljava/lang/String;

    const-string v3, "text/plain"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 169
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->contentText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "Share text context is empty."

    .line 170
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 174
    :cond_33
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->shareFileUri:Landroid/net/Uri;

    if-nez v0, :cond_3d

    const-string v0, "Share file path is null."

    .line 175
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3d
    const/4 v0, 0x1

    return v0
.end method

.method private createShareIntent()Landroid/content/Intent;
    .registers 13

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 114
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    .line 115
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->componentPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->componentClassName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 117
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->componentPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->componentClassName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    :cond_30
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->contentType:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "text/plain"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v6, :sswitch_data_100

    goto :goto_70

    :sswitch_41
    const-string v6, "image/*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v5, v11

    goto :goto_70

    :sswitch_4b
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/4 v5, 0x0

    goto :goto_70

    :sswitch_53
    const-string v6, "video/*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v5, v9

    goto :goto_70

    :sswitch_5d
    const-string v6, "*/*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v5, v8

    goto :goto_70

    :sswitch_67
    const-string v6, "audio/*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v5, v10

    :cond_70
    :goto_70
    if-eqz v5, :cond_f4

    const-string v4, "Share"

    if-eq v5, v11, :cond_94

    if-eq v5, v10, :cond_94

    if-eq v5, v9, :cond_94

    if-eq v5, v8, :cond_94

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not support share type."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_fe

    .line 130
    :cond_94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->shareFileUri:Landroid/net/Uri;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Share uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->shareFileUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_fe

    .line 140
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_dc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fe

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 142
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 143
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->shareFileUri:Landroid/net/Uri;

    invoke-virtual {v3, v2, v4, v11}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_dc

    .line 123
    :cond_f4
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->contentText:Ljava/lang/String;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_fe
    :goto_fe
    return-object v0

    nop

    :sswitch_data_100
    .sparse-switch
        -0x2769fbcf -> :sswitch_67
        0xa385 -> :sswitch_5d
        0x1afce796 -> :sswitch_53
        0x30b78e68 -> :sswitch_4b
        0x71f5c476 -> :sswitch_41
    .end sparse-switch
.end method


# virtual methods
.method public shareBySystem()V
    .registers 5

    .line 82
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/Share;->checkShareParam()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 83
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/Share;->createShareIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Share"

    if-nez v0, :cond_14

    const-string v0, "shareBySystem cancel."

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_14
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->title:Ljava/lang/String;

    if-nez v2, :cond_1c

    const-string v2, ""

    .line 90
    iput-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->title:Ljava/lang/String;

    .line 93
    :cond_1c
    iget-boolean v2, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->forcedUseSystemChooser:Z

    if-eqz v2, :cond_26

    .line 94
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->title:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    :cond_26
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 99
    :try_start_32
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->requestCode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f

    .line 100
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->activity:Landroid/app/Activity;

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->requestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4d

    .line 102
    :cond_3f
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/Share;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_44} :catch_45

    goto :goto_4d

    :catch_45
    move-exception v0

    .line 105
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    :goto_4d
    return-void
.end method
