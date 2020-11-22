.class public Lcom/android/camera/preferences/PreferenceGroup;
.super Lcom/android/camera/preferences/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/preferences/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/camera/preferences/CameraPreference;)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;
    .locals 2

    .line 61
    iget-object p0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/CameraPreference;

    .line 62
    instance-of v1, v0, Lcom/android/camera/preferences/ListPreference;

    if-eqz v1, :cond_1

    .line 63
    check-cast v0, Lcom/android/camera/preferences/ListPreference;

    .line 64
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 65
    :cond_1
    instance-of v1, v0, Lcom/android/camera/preferences/PreferenceGroup;

    if-eqz v1, :cond_0

    .line 66
    check-cast v0, Lcom/android/camera/preferences/PreferenceGroup;

    .line 67
    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
