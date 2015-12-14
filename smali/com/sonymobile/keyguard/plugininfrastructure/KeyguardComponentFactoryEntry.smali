.class public Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;
.super Ljava/lang/Object;
.source "KeyguardComponentFactoryEntry.java"


# instance fields
.field public final additionalInformationResourceName:Ljava/lang/String;

.field public final enabled:Z

.field public final fullyQualifiedClassName:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final previewImage:Landroid/graphics/drawable/Drawable;

.field public final priority:I

.field public final selectableByThemes:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->name:Ljava/lang/String;

    iput p3, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->priority:I

    iput-object p2, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->previewImage:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->additionalInformationResourceName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->enabled:Z

    iput-boolean p7, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->selectableByThemes:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"name\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"fullyQualifiedClassName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->fullyQualifiedClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"priority\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\", \"previewImage\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->previewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"additionalInformationResourceName\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->additionalInformationResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"enabled\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\", \"selectableByThemes\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardComponentFactoryEntry;->selectableByThemes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
