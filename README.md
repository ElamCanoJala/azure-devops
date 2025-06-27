## Stages del Pipeline

### 1. Provision

- Usa Terraform para crear:
  - Resource group
  - Red virtual + subnet
  - IP pública + NIC
  - VM con Windows Server 2019

### 2. Configure

- Usa Ansible para:
  - Leer la IP pública de la VM
  - Generar inventario dinámico (`inventory.ini`)
  - Instalar IIS en la VM usando `win_feature`

---

## Variables Secretas

- `vmPassword`: contraseña del usuario admin de Windows (marcar como secret en Azure DevOps)

---

## Resultado Esperado

- VM creada en Azure.
- IIS instalado
- Podés acceder por navegador a `http://<IP_VM>`
