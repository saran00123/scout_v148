.class public final Lcom/google/android/gms/measurement/internal/zzet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.2"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzex;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/os/Bundle;

.field private zzd:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzex;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzet;->zza:Lcom/google/android/gms/measurement/internal/zzex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "default_event_parameters"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzb:Ljava/lang/String;

    new-instance p1, Landroid/os/Bundle;

    .line 2
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Bundle;
    .registers 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzd:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    goto/16 :goto_d4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzet;->zza:Lcom/google/android/gms/measurement/internal/zzex;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzd()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cc

    :try_start_15
    new-instance v1, Landroid/os/Bundle;

    .line 2
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v3, v0

    .line 4
    :goto_21
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_25} :catch_bb

    if-ge v3, v4, :cond_b8

    .line 5
    :try_start_27
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "n"

    .line 6
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "t"

    .line 7
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_3b} :catch_a3
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_3b} :catch_a3

    const/16 v8, 0x64

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v7, v8, :cond_5e

    const/16 v8, 0x6c

    if-eq v7, v8, :cond_54

    const/16 v8, 0x73

    if-eq v7, v8, :cond_4a

    goto :goto_68

    :cond_4a
    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    move v7, v0

    goto :goto_69

    :cond_54
    const-string v7, "l"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    move v7, v9

    goto :goto_69

    :cond_5e
    const-string v7, "d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    move v7, v10

    goto :goto_69

    :cond_68
    :goto_68
    const/4 v7, -0x1

    :goto_69
    const-string v8, "v"

    if-eqz v7, :cond_9b

    if-eq v7, v10, :cond_8f

    if-eq v7, v9, :cond_83

    :try_start_71
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzet;->zza:Lcom/google/android/gms/measurement/internal/zzex;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v5, "Unrecognized persisted bundle type. Type"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b4

    .line 9
    :cond_83
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 10
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_b4

    .line 11
    :cond_8f
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 12
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_b4

    .line 13
    :cond_9b
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_a2} :catch_a3
    .catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_a2} :catch_a3

    goto :goto_b4

    .line 21
    :catch_a3
    :try_start_a3
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzet;->zza:Lcom/google/android/gms/measurement/internal/zzex;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v5, "Error reading value from SharedPreferences. Value dropped"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    :goto_b4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_21

    .line 8
    :cond_b8
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzd:Landroid/os/Bundle;
    :try_end_ba
    .catch Lorg/json/JSONException; {:try_start_a3 .. :try_end_ba} :catch_bb

    goto :goto_cc

    :catch_bb
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzet;->zza:Lcom/google/android/gms/measurement/internal/zzex;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v0

    const-string v1, "Error loading bundle from SharedPreferences. Values will be lost"

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeg;->zza(Ljava/lang/String;)V

    .line 8
    :cond_cc
    :goto_cc
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzd:Landroid/os/Bundle;

    if-nez v0, :cond_d4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzc:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzd:Landroid/os/Bundle;

    .line 0
    :cond_d4
    :goto_d4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzd:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    .line 1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzet;->zza:Lcom/google/android/gms/measurement/internal/zzex;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzex;->zzd()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzb:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_a5

    .line 25
    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzb:Ljava/lang/String;

    .line 5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 8
    :try_start_3f
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "n"

    .line 9
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "v"

    .line 10
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    instance-of v4, v5, Ljava/lang/String;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_54} :catch_8b

    const-string v7, "t"

    if-eqz v4, :cond_5e

    :try_start_58
    const-string v4, "s"

    .line 12
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_71

    .line 13
    :cond_5e
    instance-of v4, v5, Ljava/lang/Long;

    if-eqz v4, :cond_68

    const-string v4, "l"

    .line 14
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_71

    .line 15
    :cond_68
    instance-of v4, v5, Ljava/lang/Double;

    if-eqz v4, :cond_75

    const-string v4, "d"

    .line 16
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :goto_71
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2d

    .line 16
    :cond_75
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzet;->zza:Lcom/google/android/gms/measurement/internal/zzex;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v4

    const-string v6, "Cannot serialize bundle value to SharedPreferences. Type"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 20
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_8a} :catch_8b

    goto :goto_2d

    :catch_8b
    move-exception v4

    .line 24
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzet;->zza:Lcom/google/android/gms/measurement/internal/zzex;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzge;->zzx:Lcom/google/android/gms/measurement/internal/zzfl;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfl;->zzat()Lcom/google/android/gms/measurement/internal/zzei;

    move-result-object v5

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzei;->zzb()Lcom/google/android/gms/measurement/internal/zzeg;

    move-result-object v5

    const-string v6, "Cannot serialize bundle value to SharedPreferences"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzeg;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2d

    .line 23
    :cond_9e
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    :goto_a5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzet;->zzd:Landroid/os/Bundle;

    return-void
.end method
