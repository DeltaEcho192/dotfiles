/**
  * @file loader.h * 
  * @description A definition of the structures and functions to store the different elements of a process.
  */

#ifndef STRUCTS_H
#define STRUCTS_H

typedef enum {NEW = 0, READY, RUNNING, WAITING, TERMINATED} state_t;
typedef enum {REQ_OP = 0, REL_OP, SEND_OP, RECV_OP} instr_types_t; 
typedef enum {NO = 0, YES = 1} available_t; 
typedef enum {FALSE = 0, TRUE = 1} bool_t;

/** Each process has a linked list of instructions to execute.  */
typedef struct instr_t {
  instr_types_t type;
  char *resource_name; /* any resource, including a mailbox */
  char *msg; /* the message of a send or receive instruction */
  struct instr_t *next;
} instr_t;

/** A process process_in_mem stores the name and instructions of a process */
typedef struct process_in_mem_t {
  int number; 
  char *name;
  instr_t *first_instr;
} process_in_mem_t;

/** A type that represents a mailbox resource */
typedef struct mailbox_t {
  char *name;
  char *msg; 
  struct mailbox_t *next;
} mailbox_t;

/** A type that represents a resource */
typedef struct resource_t {
  char *name;
  available_t available; 
  struct resource_t *next;
} resource_t;

/** The process control block (PCB) should contain the information
  * required to obtain the the addresses of the pages in memory 
  * (via the page tables) where the process is stored.  

  * In this code the PCB points directly to a data structure,
  * called a process_in_mem, where the process instructions are stored.  
  */
typedef struct pcb_t {
  struct process_in_mem_t *process_in_mem; /* process */
  int state; /* see enum state_t */
  struct instr_t *next_instruction;
  int priority; /* used for priority based scheduling */ 
  resource_t *resources; /* list of resources allocated to process */
  struct pcb_t *next;
} pcb_t;

/** Returns a pointer to the linked list of the loaded process pcbs */
struct pcb_t* get_init_pcbs();

/** Returns a pointer to the linked list of the loaded process pcbs */
struct pcb_t* get_new_pcb();

/** Returns a pointer to the linked list of the loaded resources */
struct resource_t* get_available_resources();

/** Returns a pointer to the linked list of the loaded mailboxes */
struct mailbox_t* get_mailboxes();

/** Returns a pointer to the linked list of the loaded process pcbs */
int  get_num_procs();

/** Deallocates the memory that was allocated for the data structures */
void dealloc_data_structures();

/** Deallocates the memory that was allocated for a pcb list */
void dealloc_pcb_list();

/** Deallocates the memory that was allocated for an instruction */
void dealloc_instruction(struct instr_t *i);

/** Deallocates the memory that was allocated for a process name */
void dealloc_last_proc_name();

/** Returns a pointer to the pcb linked list of parsed processes */
struct pcb_t* init_loader_from_files(char *filename1, char *filename2);

/** Returns a pointer to the pcb linked list of generated processes */
struct pcb_t* init_loader_from_generator();

/** Initialise the loader */
void init_loader();

/** Creates a pcb for process <code>process_name</code> with <code>priority</code> */
bool_t load_process(char *process_name, int priority);

/** Loads and stores an instruction of process <code>process_name</code> */
bool_t load_instruction(char *process_name, instr_types_t instruction, 
    char *resource_name, char *msg);

/** Loads a mailbox */
bool_t load_mailbox(char *mailboxName);

/** Loads a system resource <code>resource_name</code> */
bool_t load_resource(char *resource_name);

/** Prints list of instructions last loaded */ 
void print_instr_list(char *msg, instr_t *instructions);

#endif
